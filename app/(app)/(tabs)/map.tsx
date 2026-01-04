import { Box } from "@/components/ui/box";
import { SearchIcon } from "@/components/ui/icon";
import { Icon } from "@/components/ui/icon/index";
import { Input, InputField, InputIcon, InputSlot } from "@/components/ui/input";
import { VStack } from "@/components/ui/vstack";
import { FilterIcon, Settings2Icon } from "lucide-react-native";
import React from "react";
import { StyleSheet, View, Dimensions } from "react-native";
import MapView, { Marker, PROVIDER_GOOGLE } from "react-native-maps";
import { useSafeAreaInsets } from "react-native-safe-area-context";

// 1. Define Data Types
type PinData = {
  id: number;
  title: string;
  latitude: number;
  longitude: number;
};

// 2. Dummy Data for Pins (e.g., San Francisco)
const PINS: PinData[] = [
  {
    id: 1,
    title: "Golden Gate Bridge",
    latitude: 37.8199,
    longitude: -122.4783,
  },
  { id: 2, title: "Alcatraz Island", latitude: 37.827, longitude: -122.423 },
  { id: 3, title: "Fisherman’s Wharf", latitude: 37.808, longitude: -122.4177 },
];

export default function MapScreen() {
  const { top } = useSafeAreaInsets();

  return (
    <VStack>
      <Box
        style={{
          paddingTop: top + 12,
          paddingHorizontal: 12,
          paddingBottom: 12,
        }}
      >
        <Box className="px-10">
          <Input variant="rounded" className="bg-secondary-100 border-0">
            <InputSlot className="pl-3">
              <InputIcon as={SearchIcon} size="xl" />
            </InputSlot>
            <InputField />
          </Input>
        </Box>

        <Box className="absolute right-4 bottom-5">
          <Icon as={Settings2Icon} size="xl" />
        </Box>
      </Box>

      {/* Map */}
      <MapView
        style={styles.map}
        initialRegion={{
          latitude: 37.81,
          longitude: -122.44,
          latitudeDelta: 0.09,
          longitudeDelta: 0.04,
        }}
      >
        {/* 4. Render Markers */}
        {PINS.map((pin) => (
          <Marker
            key={pin.id}
            coordinate={{
              latitude: pin.latitude,
              longitude: pin.longitude,
            }}
            title={pin.title}
            description={pin.title}
          />
        ))}
      </MapView>
    </VStack>
  );
}

const styles = StyleSheet.create({
  map: {
    width: Dimensions.get("window").width,
    height: Dimensions.get("window").height,
  },
});
