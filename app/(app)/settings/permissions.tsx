import { Text } from "@/components/ui/text";
import { Card } from "@/components/ui/card";
import { Box } from "@/components/ui/box";
import { Input, InputField } from "@/components/ui/input";
import { Button, ButtonText } from "@/components/ui/button";
import { PasswordInput } from "@/components/custom/password-input";
import { create } from "zustand";
import { Alert, AppState, Linking, Platform, View } from "react-native";
import { VStack } from "@/components/ui/vstack/index";
import { BackButton } from "@/components/custom/back-button";
import * as Location from "expo-location";
import * as ImagePicker from "expo-image-picker";
import { useCallback, useEffect, useState } from "react";
import { Switch } from "@/components/ui/switch";
import { Loader } from "@/components/custom/loader";
import { useFocusEffect } from "@react-navigation/native";
import { HStack } from "@/components/ui/hstack";
import { Divider } from "@/components/ui/divider";

type PermissionsState = {
  location: boolean;
  camera: boolean;
  photos: boolean;
};

export default function PermissionsScreen() {
  const openAppSettings = () => {
    if (Platform.OS === "ios") {
      Linking.openURL("app-settings:");
    } else {
      Linking.openSettings();
    }
  };

  const [loading, setLoading] = useState(true);
  const [permissions, setPermissions] = useState<PermissionsState>({
    location: false,
    camera: false,
    photos: false,
  });

  const checkPermissions = useCallback(() => {
    (async () => {
      const { status: locationStatus } =
        await Location.requestForegroundPermissionsAsync();
      const { status: photosStatus } =
        await ImagePicker.requestMediaLibraryPermissionsAsync();
      const { status: cameraStatus } =
        await ImagePicker.requestCameraPermissionsAsync();

      setPermissions({
        location: locationStatus === "granted",
        camera: cameraStatus === "granted",
        photos: photosStatus === "granted",
      });
      setLoading(false);
    })();
  }, []);

  useFocusEffect(() => checkPermissions());
  useEffect(() => {
    const subs = AppState.addEventListener("change", checkPermissions);
    return () => subs.remove();
  }, []);

  return (
    <Loader isLoading={loading}>
      <View className="p-6 bg-background-0 h-full gap-4">
        <BackButton title="Permissions" />
        <VStack className="gap-2">
          <HStack className="justify-between p-2">
            <Text size="xl" bold>
              Location
            </Text>
            <Switch
              value={permissions.location}
              onChange={() => openAppSettings()}
            />
          </HStack>
          <Divider />
          <HStack className="justify-between p-2">
            <Text size="xl" bold>
              Camera
            </Text>
            <Switch
              value={permissions.camera}
              onChange={() => openAppSettings()}
            />
          </HStack>
          <Divider />
          <HStack className="justify-between p-2">
            <Text size="xl" bold>
              Photos
            </Text>
            <Switch
              value={permissions.photos}
              onChange={() => openAppSettings()}
            />
          </HStack>
          <Divider />
        </VStack>
      </View>
    </Loader>
  );
}
