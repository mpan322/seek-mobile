import { SafeAreaView } from "react-native-safe-area-context";
import { Box } from "@/components/ui/box";
import { CheckIcon, Icon } from "@/components/ui/icon";
import { ArrowLeft } from "lucide-react-native";
import { Text } from "@/components/ui/text";
import { Pressable } from "@/components/ui/pressable";
import { useRouter } from "expo-router";
import { VStack } from "@/components/ui/vstack/index";
import { create } from "zustand";
import {
  Slider,
  SliderFilledTrack,
  SliderThumb,
  SliderTrack,
} from "@/components/ui/slider";
import {
  Checkbox,
  CheckboxGroup,
  CheckboxIcon,
  CheckboxIndicator,
  CheckboxLabel,
} from "@/components/ui/checkbox";
import { SelectBoxInput } from "@/components/custom/select-box-input";
import { PeopleInput } from "@/components/custom/people-input";
import { useFilterStore } from "@/src/store/filter-store";

const ALL_AMMENITIES = [
  "Wifi",
  "Dryer",
  "Pets Allowed",
  "Fireplace",
  "Dishwasher",
  "Bike Storage",
  "Washing Machine",
  "Garden",
  "Parking",
];

export default function Filters() {
  const router = useRouter();

  const {
    location,
    numberOfPeople,
    pricePerMonth,
    propertyType,
    ammenities,
    setLocation,
    setNumberOfPeople,
    setPricePerMonth,
    setPropertyType,
    setAmmenities,
  } = useFilterStore();

  return (
    <SafeAreaView className="py-4 px-6">
      <VStack className="gap-6">
        <Box className="items-center">
          <Pressable
            className="absolute left-2"
            onPressIn={() => router.back()}
          >
            <Icon as={ArrowLeft} size="xl" />
          </Pressable>
          <Text bold size="2xl">
            Filters
          </Text>
        </Box>

        <Box className="gap-2">
          <Text size="lg">Location</Text>
          <SelectBoxInput
            opions={[
              { label: "Only Center", value: "only-center" },
              { label: "Everywhere", value: "everywhere" },
            ]}
            value={location}
            // @ts-ignore
            onChange={setLocation}
            className="gap-2"
          />
        </Box>

        {/* People */}
        <PeopleInput value={numberOfPeople} onChange={setNumberOfPeople} />

        {/* Price Slider */}
        <Box className="gap-2">
          <Text size="lg">Price per Month</Text>
          <Box className="px-4">
            <Slider
              size="lg"
              minValue={0}
              maxValue={1000}
              onChange={setPricePerMonth}
              value={pricePerMonth}
            >
              <SliderTrack>
                <SliderFilledTrack />
              </SliderTrack>
              <SliderThumb />
            </Slider>
          </Box>
        </Box>

        {/* Property Type */}
        <Box className="gap-2">
          <Text size="lg">Property Type</Text>
          <SelectBoxInput
            opions={[
              { label: "Flat", value: "flat" },
              { label: "House", value: "house" },
            ]}
            value={propertyType}
            // @ts-ignore
            onChange={setPropertyType}
            className="gap-2"
          />
        </Box>

        {/* Ammenities */}
        <Box>
          <Text size="lg">Ammenities</Text>
          <CheckboxGroup
            className="flex flex-wrap flex-row justify-between gap-2"
            value={ammenities}
            onChange={setAmmenities}
          >
            {ALL_AMMENITIES.map((ammenity) => (
              <Checkbox value={ammenity} key={ammenity} size="lg">
                <CheckboxIndicator>
                  <CheckboxIcon as={CheckIcon} />
                </CheckboxIndicator>
                <CheckboxLabel>{ammenity}</CheckboxLabel>
              </Checkbox>
            ))}
          </CheckboxGroup>
        </Box>
      </VStack>
    </SafeAreaView>
  );
}
