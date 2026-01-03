import * as ImagePicker from "expo-image-picker";
import { Pressable } from "../ui/pressable";
import { Avatar, AvatarImage } from "../ui/avatar";
import { Image } from "expo-image";
import { useEffect, useState } from "react";
import { UserPlusIcon, Icon } from "lucide-react-native";
import { Box } from "../ui/box";
import { Alert, View } from "react-native";

const useProfilePicture = () => {
  const [status, requestPermission] = ImagePicker.useMediaLibraryPermissions();

  const pickImage = async (useCamera: boolean) => {
    console.log("pickImage");
    const options: ImagePicker.ImagePickerOptions = {
      mediaTypes: ["images"],
      allowsEditing: true,
      aspect: [1, 1],
      quality: 0.5,
    };

    if (!status?.granted) {
      const { granted } = await requestPermission();
      if (!granted) {
        Alert.alert(
          "Permission required",
          "Please grant permission to access media",
        );
        return;
      }
    }

    const result = useCamera
      ? await ImagePicker.launchCameraAsync(options)
      : await ImagePicker.launchImageLibraryAsync(options);

    if (!result.canceled) {
      return result.assets[0];
    }
    return null;
  };

  return { pickImage };
};

export function ProfilePhotoInput() {
  const { pickImage } = useProfilePicture();
  const [image, setImage] = useState<string | undefined>();

  const handleImage = async () => {
    const image = await pickImage(false);
    setImage(image?.uri);
  };

  return (
    <Pressable onPress={handleImage}>
      <Avatar
        size="2xl"
        style={{
          justifyContent: "center",
          alignItems: "center",
          overflow: "hidden",
        }}
        className="bg-background-200 items-center justify-center overflow-hidden"
      >
        {image ? (
          <AvatarImage
            source={{ uri: image }}
            alt="Profile Photo"
            resizeMode="cover"
          />
        ) : (
          <UserPlusIcon size="33%" color="white" />
        )}
      </Avatar>
    </Pressable>
  );
}
