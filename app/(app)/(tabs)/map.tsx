import { Box } from "@/components/ui/box";
import { useDebounce } from "use-debounce";
import { SearchIcon } from "@/components/ui/icon";
import { Icon } from "@/components/ui/icon/index";
import { Input, InputField, InputIcon, InputSlot } from "@/components/ui/input";
import { VStack } from "@/components/ui/vstack";
import { useAutocomplete } from "@/src/api/maps-api/places-api";
import {
  FocusIcon,
  Settings2Icon,
} from "lucide-react-native";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  StyleSheet,
  Dimensions,
  Alert,
} from "react-native";
import MapView, {
  Marker,
  MarkerPressEvent,
} from "react-native-maps";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { FlatList } from "react-native-gesture-handler";
import { Divider } from "@/components/ui/divider";
import { Text } from "@/components/ui/text";
import { Keyboard } from "react-native";
import { useListingsControllerGetAllVerifiedListings } from "@/src/api/seek-api/listings";
import { Listing } from "@/src/api/seek-api/model/listing";
import { Pressable } from "@/components/ui/pressable";
import * as Location from "expo-location";
import BottomSheet, {
  BottomSheetFlatListMethods,
  BottomSheetFlatList as GFlatList,
} from "@gorhom/bottom-sheet";
import {
  VerticalListingCard,
} from "@/components/custom/listing-card";
import { FlashList } from "@shopify/flash-list";
import { useRouter } from "expo-router";

const BottomSheetFlatList = GFlatList as unknown as typeof FlashList;

export default function MapScreen() {
  const {
    data: listings,
  } = useListingsControllerGetAllVerifiedListings();
  useEffect(() => {
    console.log("remount");
  }, [listings])

  const router = useRouter();

  const mapRef = useRef<MapView>(null)
  const centerLocation = useCallback(async () => {
    let { status } = await Location.requestForegroundPermissionsAsync();
    if (status !== "granted") {
      Alert.alert(
        "Unable to center location",
        "Please enable location services",
      );
      return;
    }
    const { coords: { longitude, latitude } } = await Location.getCurrentPositionAsync({});
    mapRef.current?.animateToRegion({
      latitude,
      longitude,
      latitudeDelta: 0.01,
      longitudeDelta: 0.01,
    }, 300);
  }, []);

  const { top } = useSafeAreaInsets();

  // TODO: replace with expo-crypto uuid
  const sessionToken = useRef(Math.random().toString(36).substring(7));

  // querying places api
  const [searchFocused, setSearchFocused] = useState<boolean>(false);
  const [query, setQuery] = useState("");
  const [debouncedQuery] = useDebounce(query, 500);
  const { isLoading, data, error } = useAutocomplete(
    {
      sessiontoken: sessionToken.current,
      input: debouncedQuery,
      radius: 10000,
      locationbias: "circle:500@56.337111,-2.795107",
    },
    {
      query: {
        enabled: debouncedQuery.length > 3,
        staleTime: 1000 * 60,
      },
    },
  );
  const locations = data?.data.predictions ?? [];
  const showSearch = searchFocused && locations.length > 0 && query.length > 3;

  const sheetRef = useRef<BottomSheet>(null);
  const listRef = useRef<BottomSheetFlatListMethods>(null);

  function handleMarkerPress(e: MarkerPressEvent, listing: Listing) {
    sheetRef.current?.snapToIndex(1);
    listRef.current?.scrollToItem({ item: listing, animated: false });
    e.stopPropagation();
  }

  function handleCardPress(listing: Listing) {
    router.push(`/(app)/location/${listing._id}/details`);
  }

  function handleFilterPress() {
    router.push("/(app)/filters")
  }

  return (
    <VStack className="flex-1">
      <Box
        style={{
          paddingTop: top + 12,
          paddingHorizontal: 12,
          paddingBottom: 12,
        }}
      >
        <Box className="px-10">
          <Box className="w-fit">
            <Input variant="rounded" className="bg-secondary-100 border-0">
              <InputSlot className="pl-3">
                <InputIcon as={SearchIcon} size="xl" />
              </InputSlot>
              <InputField
                value={query}
                onChangeText={setQuery}
                onFocus={() => setSearchFocused(true)}
                onBlur={() => setSearchFocused(false)}
              />
            </Input>
            {showSearch && (
              <Box className="absolute w-full top-12 px-2 z-10">
                <Box className="w-full bg-white rounded-xl p-2">
                  <FlatList
                    data={locations}
                    ItemSeparatorComponent={() => <Divider />}
                    renderItem={({ item }) => (
                      <Text className="text-primary-600 line-clamp-2">
                        {item.description}
                      </Text>
                    )}
                  />
                </Box>
              </Box>
            )}
          </Box>
        </Box>

        <Pressable onPressIn={() => handleFilterPress()} className="absolute right-4 bottom-5">
          <Icon as={Settings2Icon} size="xl" />
        </Pressable>
      </Box>

      <MapView
        ref={mapRef}
        style={{ flex: 1 }}
        onPanDrag={() => {
          sheetRef.current?.snapToIndex(0);
          Keyboard.dismiss();
        }}
        onPress={() => {
          sheetRef.current?.snapToIndex(0);
          Keyboard.dismiss();
        }}
        initialRegion={{
          latitude: 56.337111,
          longitude: -2.795107,
          latitudeDelta: 0.01,
          longitudeDelta: 0.01,
        }}
      >
        {listings?.map((listing) => (
          <ListingMarker
            key={listing._id}
            listing={listing}
            onPress={(e) => handleMarkerPress(e, listing)}
          />
        ))}
      </MapView>
      <Box className="absolute bottom-7 right-5">
        <Pressable
          className="rounded-full aspect-square bg-black p-3"
          onPressIn={() => centerLocation()}
        >
          <FocusIcon className="text-white text-xl" color="white" />
        </Pressable>
      </Box>

      <BottomSheet
        snapPoints={["3%", "50%"]}
        topInset={top + 2}
        enableContentPanningGesture={false}
        enableDynamicSizing={false}
        ref={sheetRef}
        backgroundStyle={{
          backgroundColor: "rgb(31, 31, 31)",
        }}
        handleStyle={{
          backgroundColor: "rgb(31, 31, 31)",
          borderTopEndRadius: 12,
        }}
        handleIndicatorStyle={{
          backgroundColor: "white",
        }}
      >
        <BottomSheetFlatList<Listing>
          // @ts-ignore
          ref={listRef}
          showsVerticalScrollIndicator={true}
          data={listings}
          extraData={listings}
          renderItem={({ item }) => (
            <VerticalListingCard
              data={item}
              onPress={() => handleCardPress(item)}
            />
          )}
        />
      </BottomSheet>
    </VStack>
  );
}

type ListingMarkerProps = {
  listing: Listing;
  onPress?: (e: MarkerPressEvent) => void;
};
function ListingMarker({ listing, onPress }: ListingMarkerProps) {
  const [track, setTrack] = useState<boolean>(true);
  useEffect(() => {
    const timer = setTimeout(() => {
      setTrack(false);
    }, 500);
    return () => clearTimeout(timer);
  }, []);

  return (
    <Marker
      onPress={onPress}
      tracksViewChanges={track}
      coordinate={{
        latitude: 56.337111 + (Math.random() - 0.5) * 0.005,
        longitude: -2.795107 + (Math.random() - 0.5) * 0.005,
      }}
    >
      <Pressable className="bg-black rounded-full items-center justify-center w-14 aspect-square">
        <Text className="text-center text-sm text-white line-clamp-1">
          £{listing.monthlyRent}
        </Text>
      </Pressable>
    </Marker>
  );
}

const styles = StyleSheet.create({
  map: {
    width: Dimensions.get("window").width,
    height: Dimensions.get("window").height,
    ...StyleSheet.absoluteFillObject,
  },
});
