import {
  SafeAreaView,
  useSafeAreaInsets,
} from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { Button, ButtonText } from "@/components/ui/button";
import { useRouter } from "expo-router";
import { useAuth } from "@/src/store/auth-store";
import { FlatList, Pressable } from "react-native";
import { Dimensions } from "react-native";
import { Listing } from "@/src/api/model";
import { Box } from "@/components/ui/box";
import { useBottomTabBarHeight } from "@react-navigation/bottom-tabs";
import { HStack } from "@/components/ui/hstack/index";
import { Image } from "expo-image";
import { Icon } from "@/components/ui/icon";
import {
  FilterIcon,
  FilterXIcon,
  ForwardIcon,
  HeartIcon,
  Settings2Icon,
  SettingsIcon,
  ShareIcon,
} from "lucide-react-native";
import { VStack } from "@/components/ui/vstack/index";
import { Avatar, AvatarImage } from "@/components/ui/avatar";
import { useStore } from "expo-router/build/global-state/router-store";
import { useState } from "react";

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
  const logout = useAuth((state) => state.logout);
  const router = useRouter();
  const bottomBarHeight = useBottomTabBarHeight();

  const { height: SCREEN_HEIGHT } = Dimensions.get("window");
  const data: Listing[] = [
    { ...example, _id: "1" },
    { ...example, _id: "2" },
    { ...example, _id: "3" },
  ];

  return (
    <FlatList
      data={data}
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
              source={{ uri: "https://picsum.photos/1080/2100" }}
              style={{ width: "100%", height: "100%" }}
              contentFit="contain"
            />
          </Box>
        )}
      />
      <Box className="absolute bottom-4 w-full">
        <ScrollDots total={listing.photos.length} value={imageIndex} />
      </Box>
      <ActionBar />
    </Box>
  );
}

type ScrollDotsProps = {
  total: number;
  value: number;
};

function ScrollDots({ total, value }: ScrollDotsProps) {
  return (
    <HStack className="gap-3 items-center justify-center w-full">
      {Array.from({ length: total }).map((_, i) => (
        <Box
          key={i}
          className={`w-2 h-2 rounded-full ${i === value ? "bg-white" : "bg-gray-400"}`}
        />
      ))}
    </HStack>
  );
}

function ActionBar() {
  const { top } = useSafeAreaInsets();
  const router = useRouter();

  return (
    <Box
      className="absolute h-full right-4 w-fit"
      style={{
        paddingTop: top,
      }}
    >
      <VStack className="flex flex-1 flex-col justify-between items-center py-4">
        <Pressable onPress={() => router.navigate("/(app)/filters")}>
          <Settings2Icon color="white" size={35} />
        </Pressable>
        <VStack className="gap-4">
          <HeartIcon fill="white" color="transparent" size={35} />
          <ShareIcon color="white" size={35} />
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
    </Box>
  );
}
