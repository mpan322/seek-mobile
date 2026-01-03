import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { Button, ButtonText } from "@/components/ui/button";
import { useRouter } from "expo-router";
import { useAuth } from "@/src/store/auth-store";
import { FlatList } from "react-native";
import { Dimensions } from "react-native";
import { Listing } from "@/src/api/model";
import { Box } from "@/components/ui/box";

export default function HomeScreen() {
  const logout = useAuth((state) => state.logout);
  const router = useRouter();

  const { height: SCREEN_HEIGHT } = Dimensions.get("window");
  const data: Listing[] = [
    {
      _id: "",
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
      photos: [],
      videoTourLink: "",
      floorPlanImage: "",
      requirements: [],
      isVerified: false,
      isDraft: false,
      lastUpdated: "",
    },
  ];

  return (
    <FlatList
      data={data}
      pagingEnabled
      showsVerticalScrollIndicator={false}
      snapToInterval={SCREEN_HEIGHT}
      snapToAlignment="start"
      decelerationRate="fast"
      keyExtractor={(item) => item._id}
      renderItem={({ item }) => (
        <Box
          style={{
            height: SCREEN_HEIGHT,
            width: "100%",
            backgroundColor: "red",
          }}
          className="bg-red-500"
        >
          <Text>"hello"</Text>
        </Box>
      )}
    />
  );
}

function ListingScrollItem({ listing }: { listing: Listing }) {
  const { height: SCREEN_HEIGHT } = Dimensions.get("window");

  return (
    <Box
      style={{
        height: SCREEN_HEIGHT,
        width: "100%",
        backgroundColor: "red",
        flexDirection: "column-reverse"
      }}
    >
      <Box className="h-full bg-blue-600 w-8"></Box>
    </Box>
  );
}
