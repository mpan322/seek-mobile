import {
  SafeAreaView,
  useSafeAreaInsets,
} from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { Button, ButtonText } from "@/components/ui/button";
import { useRouter } from "expo-router";
import { useAuth } from "@/src/store/auth-store";
import { FlatList, Pressable, Share } from "react-native";
import { Dimensions } from "react-native";
import { Listing } from "@/src/api/seek-api/model";
import { Box } from "@/components/ui/box";
import { useBottomTabBarHeight } from "@react-navigation/bottom-tabs";
import { HStack } from "@/components/ui/hstack/index";
import { Image } from "expo-image";
import { Icon } from "@/components/ui/icon";
import {
  ForwardIcon,
  HeartIcon,
  Settings2Icon,
  SettingsIcon,
  ShareIcon,
} from "lucide-react-native";
import { VStack } from "@/components/ui/vstack/index";
import { Avatar, AvatarImage } from "@/components/ui/avatar";
import { useStore } from "expo-router/build/global-state/router-store";
import { useEffect, useState } from "react";
import {
  useListingsControllerGetAllVerifiedListings,
  useListingsControllerMyListings,
} from "@/src/api/seek-api/listings";
import { useApplicationControllerGetApplication } from "@/src/api/seek-api/application";
import { useAppControllerGetHello } from "@/src/api/seek-api/app";
import { RefreshControl } from "react-native-gesture-handler";
import { ScrollDots } from "@/components/custom/scroll-dots";

const example: Listing = {
  _id: "1",
  landlord: "",
  propertyTitle: "",
  numOfPeople: 0,
  sizeSqMeters: 0,
  propertyType: "FLAT_APARTMENT",
  bedroomsCount: 0,
  enSuiteBedroomCount: 0,
  bathrooms: 0,
  registerOfTitleKey: "",
  propertyDesc: "",
  amenities: [],
  streetAddress: "",
  cityTown: "",
  postcodeZIP: "",
  country: "",
  monthlyRent: 0,
  securityDeposit: 0,
  availableFrom: "",
  availableUntil: "",
  furnishingStatus: "furnished",
  epcRating: "A",
  photos: ["a", "b", "c"],
  videoTourLink: "",
  floorPlanImage: "",
  requirements: [],
  isVerified: false,
  isDraft: false,
  lastUpdated: "",
};

export default function HomeScreen() {
  const { data: app } = useAppControllerGetHello();
  const { refetch, data, error, isRefetching } =
    useListingsControllerGetAllVerifiedListings();
  const listings = data?.data ?? [];

  useEffect(() => {
    if (error) {
      console.log("[[ERROR]]", error);
    }
  }, [error]);

  const bottomBarHeight = useBottomTabBarHeight();
  const { height: SCREEN_HEIGHT } = Dimensions.get("window");
  const top = useSafeAreaInsets().top;

  return (
    <FlatList
      refreshControl={
        <RefreshControl
          refreshing={isRefetching}
          onRefresh={() => {
            console.log("[LOG] refreshing listings");
            refetch();
          }}
          progressViewOffset={top - 10}
        />
      }
      ListEmptyComponent={<Box className="w-full h-full bg-red-500" />}
      data={listings}
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

  return (
    <Box
      style={{
        height: height,
      }}
      className="bg-gray-300"
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
          <Box
            style={{
              height: "100%",
              width: SCREEN_WIDTH,
            }}
          >
            <Image
              source={{ uri: item }}
              style={{ width: "100%", height: "100%" }}
              contentFit="contain"
            />
          </Box>
        )}
      />
      <Overlay data={listing} imageIndex={imageIndex} />
      {/* <Box className="absolute w-full h-full"> */}
      {/*   <Box className="absolute bottom-4 w-full"> */}
      {/*   </Box> */}
      {/*   <ActionBar data={listing} /> */}
      {/* </Box> */}
    </Box>
  );
}

type OverlayProps = {
  data: Listing;
  imageIndex: number;
};

function Overlay({ data: listing, imageIndex }: OverlayProps) {
  const { top } = useSafeAreaInsets();

  return (
    <Box
      className="absolute w-full h-full bg-transparent flex-row px-4 "
      style={{
        paddingTop: top,
      }}
      pointerEvents="box-none"
    >
      <Box className="flex flex-1 justify-end py-4 gap-2">
        <ScrollDots total={listing.photos.length} value={imageIndex} />
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
          // source={{ uri: "https://picsum.photos/200" }}
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
