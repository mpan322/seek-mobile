import { Box } from "@/components/ui/box";
import { ArrowLeftIcon, Icon } from "@/components/ui/icon";
import { Pressable } from "@/components/ui/pressable";
import { VStack } from "@/components/ui/vstack/index";
import { router } from "expo-router";
import { Image } from "@/components/ui/image";
import { FlatList, LayoutChangeEvent, ScrollView } from "react-native";
import { useMemo, useState } from "react";
import { ScrollDots } from "@/components/custom/scroll-dots";
import {
  useGlobalSearchParams,
  useSearchParams,
} from "expo-router/build/hooks";
import { Text } from "@/components/ui/text";
import {
  getListingsControllerGetAllVerifiedListingsQueryKey,
  useListingsControllerGetById,
} from "@/src/api/seek-api/listings";
import { queryClient } from "@/app/_layout";
import { Listing } from "@/src/api/seek-api/model";
import { HStack } from "@/components/ui/hstack";
import { Button, ButtonText } from "@/components/ui/button";
import {
  AlarmSmokeIcon,
  FlowerIcon,
  HeartIcon,
  HeaterIcon,
  LucideIcon,
  ParkingSquareIcon,
  TvIcon,
  WashingMachineIcon,
  WifiIcon,
} from "lucide-react-native";

function getFurnishingStr(furnishingStatus: string) {
  if (furnishingStatus === "furnished") {
    return "Fully Furnished";
  } else if (furnishingStatus === "unfurnished") {
    return "Unfurnished";
  } else if (furnishingStatus === "partFurnished") {
    return "Unfurnished";
  } else {
    return "Unknown";
  }
}

export default function DetailsScreen() {
  const [parentWidth, setParentWidth] = useState<number>(0);
  const [imageIndex, setImageIndex] = useState<number>(0);
  const { id } = useGlobalSearchParams<{ id: string }>();

  const { data, isLoading } = useListingsControllerGetById(id, {
    query: {
      select: (listing) => {
        return {
          ...listing,
          availableFrom: new Intl.DateTimeFormat("en-GB", {
            day: "2-digit",
            month: "long",
            year: "numeric",
          }).format(new Date(listing.availableFrom)),
          furnishingStatus: getFurnishingStr(listing.furnishingStatus),
        };
      },
      initialData: () => {
        return queryClient
          .getQueryData<
            Listing[]
          >(getListingsControllerGetAllVerifiedListingsQueryKey())
          ?.find((listing) => listing._id === id);
      },
    },
  });

  const onLayout = (e: LayoutChangeEvent) => {
    setParentWidth(e.nativeEvent.layout.width);
  };

  const furnishingStr = useMemo(() => {}, []);

  return (
    <ScrollView decelerationRate={0.9}>
      <VStack className="gap-2 p-4">
        <HStack className="justify-between w-full items-center gap-4">
          <Pressable onPressIn={() => router.back()}>
            <Icon as={ArrowLeftIcon} size="xl" />
          </Pressable>
          <Text className="text-2xl text-center font-semibold line-clamp-1 flex-1 text-white">
            {data?.propertyTitle}
          </Text>
          <Box className="h-6 aspect-square" />
        </HStack>

        <Box
          onLayout={onLayout}
          className="rounded-xl overflow-hidden h-[250px]"
        >
          <FlatList
            horizontal
            showsHorizontalScrollIndicator={false}
            pagingEnabled
            disableIntervalMomentum
            snapToAlignment="start"
            viewabilityConfig={{
              viewAreaCoveragePercentThreshold: 51,
            }}
            onViewableItemsChanged={({ viewableItems }) => {
              if (viewableItems.length === 0) {
                return;
              }
              setImageIndex(viewableItems[0].index ?? 0);
            }}
            data={data?.photos ?? []}
            decelerationRate={0.9}
            keyExtractor={(item) => item}
            renderItem={({ item }) => (
              <Box
                style={{
                  width: parentWidth,
                }}
              >
                <Image
                  className="w-full h-full"
                  alt="listing image"
                  source={{
                    uri: item,
                  }}
                />
              </Box>
            )}
          />
          <Box className="absolute w-full bottom-2">
            <ScrollDots total={data?.photos.length ?? 0} value={imageIndex} />
          </Box>
        </Box>

        <VStack className="gap-4">
          <HStack>
            <VStack className="flex-[2]">
              <Text className="text-2xl font-semibold text-white">
                {data?.propertyTitle}
              </Text>
              <Text className="text-sm text-white">{data?.streetAddress}</Text>
            </VStack>
            <Button size="lg" className="flex-1 rounded-xl">
              <ButtonText>Apply</ButtonText>
            </Button>
          </HStack>

          <VStack className="gap-1">
            <HStack className="gap-2">
              <LabeledText
                label="Property Type"
                value={data?.propertyType ?? ""}
              />
              <BedroomInfo
                bedroomsCount={data?.bedroomsCount}
                enSuiteBedroomCount={data?.enSuiteBedroomCount}
              />
            </HStack>
            <HStack className="gap-2">
              <LabeledText
                label="Montly Rent"
                value={`£${data?.monthlyRent ?? ""} pcm`}
              />
              <LabeledText
                label="Deposit"
                value={`£${data?.securityDeposit ?? ""}`}
              />
            </HStack>
            <HStack className="gap-2">
              <LabeledText
                label="Property Size"
                value={`${data?.sizeSqMeters ?? ""} m²`}
              />
              <LabeledText
                label="Bathrooms"
                value={`${data?.bathrooms ?? ""}`}
              />
            </HStack>
            <HStack className="gap-2">
              <LabeledText
                label="Furnishing"
                value={data?.furnishingStatus ?? ""}
              />
              <LabeledText
                label="EPC Rating"
                value={`${data?.epcRating ?? "Unknown"}`}
              />
            </HStack>
            {data && (
              <HStack className="gap-2">
                <LabeledText
                  label="Available From"
                  value={data.availableFrom}
                />
              </HStack>
            )}
          </VStack>

          <VStack>
            <Text className="text-xl font-semibold text-white">Amenities</Text>
            <Box className="flex flex-row flex-wrap">
              {data?.amenities.map((amenity) => (
                <Box key={amenity} className="w-[50%] justify-center p-1">
                  <AmenityInfo key={amenity} amenity={amenity} />
                </Box>
              ))}
            </Box>
          </VStack>
        </VStack>
      </VStack>
    </ScrollView>
  );
}

type BedroomInfoProps = {
  bedroomsCount?: number;
  enSuiteBedroomCount?: number;
};

function BedroomInfo({
  bedroomsCount = 0,
  enSuiteBedroomCount = 0,
}: BedroomInfoProps) {
  const regularBedrooms = bedroomsCount - enSuiteBedroomCount;
  const text = `${regularBedrooms} Regular, ${enSuiteBedroomCount} Ensuite`;
  return <LabeledText label="Bedrooms" value={text} />;
}

type LabeledTextProps = {
  label: string;
  value: string | number;
};

function LabeledText({ label, value }: LabeledTextProps) {
  return (
    <VStack className="flex-1">
      <Text className="text-lg font-semibold text-white">{label}</Text>
      <Text className="text-sm text-white">{value}</Text>
    </VStack>
  );
}

const amenityTexts: Record<string, string> = {
  Smoke_Alarm: "Smoke Alarm",
  wifi: "Wi-Fi",
  tv: "TV",
  washing_machine: "Washing Machine",
  dryer: "Dryer",
  dishwasher: "Dishwasher",
  parking: "Parking",
  garden: "Garden",
};

const amenityIcons: Record<string, LucideIcon> = {
  Smoke_Alarm: AlarmSmokeIcon,
  wifi: WifiIcon,
  tv: TvIcon,
  washing_machine: WashingMachineIcon,
  parking: ParkingSquareIcon,
  garden: FlowerIcon,
};

function AmenityInfo({ amenity }: { amenity: string }) {
  const text = amenityTexts[amenity] ?? amenity;
  const icon = amenityIcons[amenity] ?? HeartIcon;

  return (
    <HStack className="gap-3 items-center">
      <Icon as={icon} size="sm" />
      <Text className="text-center text-md text-white">{text}</Text>
    </HStack>
  );
}
