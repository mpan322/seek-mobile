import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { FlatList, Pressable, Share } from "react-native";
import { Dimensions } from "react-native";
import { Listing } from "@/src/api/seek-api/model";
import { Box } from "@/components/ui/box";
import { useBottomTabBarHeight } from "@react-navigation/bottom-tabs";
import { Image } from "expo-image";
import { HeartIcon, Settings2Icon, ShareIcon, UserIcon, UsersIcon } from "lucide-react-native";
import { VStack } from "@/components/ui/vstack/index";
import { Avatar } from "@/components/ui/avatar";
import { useEffect, useState } from "react";
import { useListingsControllerGetAllVerifiedListings } from "@/src/api/seek-api/listings";
import { RefreshControl } from "react-native-gesture-handler";
import { ScrollDots } from "@/components/custom/scroll-dots";
import { Text } from "@/components/ui/text"

export default function HomeScreen() {
  const {
    error,
    refetch,
    data: listings,
    isRefetching,
  } = useListingsControllerGetAllVerifiedListings();
  console.log("my listings", listings, error);

  const bottomBarHeight = useBottomTabBarHeight();
  const { height: SCREEN_HEIGHT } = Dimensions.get("window");
  const top = useSafeAreaInsets().top;

  return (
    <FlatList
      refreshControl={
        <RefreshControl
          refreshing={isRefetching}
          onRefresh={() => refetch()}
          progressViewOffset={top}
        />
      }
      ListEmptyComponent={<Box className="w-full h-full bg-red-500" />}
      data={listings ?? []}
      className="min-h-full"
      pagingEnabled
      disableIntervalMomentum
      directionalLockEnabled={true}
      showsVerticalScrollIndicator={false}
      contentContainerStyle={{
        flexGrow: 1,
      }}
      snapToInterval={SCREEN_HEIGHT - bottomBarHeight}
      snapToAlignment="start"
      decelerationRate={0.9}
      keyExtractor={(item) => item._id}
      renderItem={({ item }) => <ListingScrollItem listing={item} />}
    />
  );
}

function ListingScrollItem({ listing }: { listing: Listing }) {
  const { height: SCREEN_HEIGHT, width: SCREEN_WIDTH } =
    Dimensions.get("screen");
  const bottomBarHeight = useBottomTabBarHeight();
  const height = SCREEN_HEIGHT - bottomBarHeight;
  const [imageIndex, setImageIndex] = useState<number>(0);
  const router = useRouter();

  function handleCardPress(listing: Listing) {
    router.push(`/(app)/location/${listing._id}/details`);
  }

  return (
    <Box
      style={{
        height: height,
      }}
      className="bg-secondary-50"
    >
      <FlatList
        data={listing.photos}
        pagingEnabled
        disableIntervalMomentum
        directionalLockEnabled={true}
        viewabilityConfig={{
          viewAreaCoveragePercentThreshold: 51,
        }}
        onViewableItemsChanged={({ viewableItems }) => {
          if (viewableItems.length === 0) {
            return;
          }
          setImageIndex(viewableItems[0].index ?? 0);
        }}
        horizontal
        showsHorizontalScrollIndicator={false}
        snapToInterval={SCREEN_WIDTH}
        snapToAlignment="start"
        decelerationRate={0.9}
        keyExtractor={(item) => item}
        renderItem={({ item }) => (
          <Pressable
            onPress={() => handleCardPress(listing)}
            style={{
              height: "100%",
              width: SCREEN_WIDTH,
            }}
          >
            <Image
              source={{ uri: item }}
              style={{ width: "100%", height: "100%" }}
              contentFit="cover"
            />
          </Pressable>
        )}
      />
      <Overlay data={listing} imageIndex={imageIndex} />
    </Box>
  );
}

type OverlayProps = {
  data: Listing;
  imageIndex: number;
};

function Overlay({ data: listing, imageIndex }: OverlayProps) {
  const { top } = useSafeAreaInsets();
  const [width, setWidth] = useState<number>(0);

  return (
    <Box
      className="absolute w-full h-full bg-transparent flex-row px-4 "
      style={{
        paddingTop: top,
      }}
      pointerEvents="box-none"
    >
      <Box className="flex flex-1 justify-end py-4 gap-2">
        <Box>
          <Text className="text-white text-2xl font-bold">{listing.propertyTitle}</Text>
          <Text className="text-white text-sm">{listing.streetAddress}</Text>
          <Text className="text-white text-sm">£{listing.monthlyRent} pcm</Text>
          <Box className="flex flex-row">
            <Box className="flex-row gap-1 items-end" onLayout={e => setWidth(e.nativeEvent.layout.width)}>
              <UsersIcon color="white" size={20} />
              <Text className="text-white text-sm">{listing.numOfPeople ?? 0}</Text>
            </Box>
            <Box className="flex-1 justify-center">
              <ScrollDots total={listing.photos.length} value={imageIndex} />
            </Box>
            <Box style={{ width }} />
          </Box>
        </Box>
      </Box>
      <Box className="h-full w-fit py-4">
        <ActionBar data={listing} />
      </Box>
    </Box>
  );
}

type ActionBarProps = {
  data: Listing;
};

function ActionBar({ data }: ActionBarProps) {
  const id = data._id;
  const router = useRouter();

  function handleShare() {
    console.log("[LOG] sharing listing");
    Share.share({
      message: `Check out this listing on Seek! ${id}`,
      url: `https://www.seekapp.uk/link/${id}`,
    });
  }

  return (
    <VStack className="flex flex-1 flex-col justify-between items-center">
      <Pressable onPress={() => router.navigate("/(app)/filters")}>
        <Settings2Icon color="white" size={35} />
      </Pressable>
      <VStack className="gap-4">
        <Pressable>
          <HeartIcon fill="white" color="transparent" size={35} />
        </Pressable>
        <Pressable onPress={handleShare}>
          <ShareIcon color="white" size={35} />
        </Pressable>
      </VStack>
      <Avatar className="overflow-hidden">
        <Image
          source={{ uri: "https://picsum.photos/200" }}
          placeholderContentFit="cover"
          contentFit="cover"
          transition={200}
          style={{ width: "100%", height: "100%" }}
          placeholder={require("@/assets/images/avatar.jpg")}
        />
      </Avatar>
    </VStack>
  );
}
