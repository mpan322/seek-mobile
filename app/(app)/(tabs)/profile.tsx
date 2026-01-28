import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Avatar, AvatarImage } from "@/components/ui/avatar";
import { Button, ButtonIcon, ButtonText } from "@/components/ui/button";
import { AtSignIcon } from "@/components/ui/icon";
import { Box } from "@/components/ui/box";
import { Href, Redirect, useRouter } from "expo-router";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { SettingsIcon } from "@/components/ui/icon/index";
import { UserIcon } from "lucide-react-native";
import { ProfilePhotoInput } from "@/components/custom/profile-photo-input";
import { useProfilePicture } from "@/hooks/use-profile-photo";
import { ErrorDto, UserDto } from "@/src/api/seek-api/model";
import { Loader } from "@/components/custom/loader";
import { Pressable } from "react-native";
import React, { useCallback, useState } from "react";
import { usersControllerSetProfilePic, useUsersControllerSetProfilePic } from "@/src/api/seek-api/users";
import { Actionsheet, ActionsheetBackdrop, ActionsheetContent, ActionsheetDragIndicator, ActionsheetDragIndicatorWrapper, ActionsheetItem, ActionsheetItemText } from "@/components/ui/actionsheet";
import { uploadControllerGetPresignedUrl, useUploadControllerGetPresignedUrl } from "@/src/api/seek-api/upload";
import axios from "axios";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { InterfaceToastProps } from "@gluestack-ui/core/lib/esm/toast/creator/types";

export default function SettingsScreen() {
  const { data, isLoading } = useAuthControllerCurrentUser();
  console.log(data);
  if (data == undefined) {
    return <Redirect href="/home" />
  }

  return (
    <Loader isLoading={isLoading}>
      <InnerSettingsScreen user={data} />
    </Loader>
  );
}

type InnerSettingsScreenProps = {
  user: UserDto
}

function InnerSettingsScreen({
  user
}: InnerSettingsScreenProps) {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  const { mutate: updateProfile } = useUsersControllerSetProfilePic();
  const toast = useToast();

  const { pickImage, image } = useProfilePicture(user.profilePicUrl);
  const [show, setShow] = useState<boolean>(false)
  const handlePick = useCallback(async (camera: boolean) => {
    const image = await pickImage(camera);
    if (image == null) {
      errorToast({ toast, data: { message: "No file data found.", statusCode: -1 } })
      setShow(false);
      return;
    }

    // upload the file
    const userId = user._id;
    const mimeType = image.mimeType ?? "image/*";
    let fileUrl: string;
    try {
      const response = await fetch(image.uri);
      const blob = await response.blob();

      const { uploadUrl, fileUrl: url } = await uploadControllerGetPresignedUrl({
        fileType: mimeType,
        filename: userId,
        folder: "public"
      });
      await fetch(uploadUrl, {
        method: "PUT",
        body: blob,
        headers: {
          "Content-Type": mimeType
        }
      });

      fileUrl = url;
    } catch {
      errorToast({ toast, data: { message: "Failed to upload file.", statusCode: -1 } });
      return;
    }

    // update the user profile
    updateProfile({
      data: {
        url: fileUrl
      },
    }, {
      onError(error) {
        errorToast({ toast, data: error.response?.data });
      },
    });
    setShow(false);
  }, []);

  return (
    <SafeAreaView className="px-6">
      <VStack className="items-center" style={{ gap: 40 }}>
        <VStack className="items-center gap-2">
          <Pressable onPress={() => setShow(true)}>
            <Avatar size="xl">
              <AvatarImage
                key={image ?? "default-key"}
                source={{
                  uri: image ?? user.profilePicUrl,
                }}
              />
            </Avatar>
          </Pressable>

          <Actionsheet isOpen={show} onClose={() => setShow(false)} useRNModal>
            <ActionsheetBackdrop />
            <ActionsheetContent>
              <ActionsheetDragIndicatorWrapper>
                <ActionsheetDragIndicator />
              </ActionsheetDragIndicatorWrapper>
              <ActionsheetItem onPress={() => handlePick(true)}>
                <ActionsheetItemText>Take Photo</ActionsheetItemText>
              </ActionsheetItem>
              <ActionsheetItem onPress={() => handlePick(false)}>
                <ActionsheetItemText>Choose from Library</ActionsheetItemText>
              </ActionsheetItem>
            </ActionsheetContent>
          </Actionsheet>

          <Text size="xl" bold>
            {user?.name}
          </Text>
        </VStack>
        <VStack className="gap-6 w-full">
          <Button
            variant="outline"
            size="xl"
            className="grid grid-cols-3 rounded-xl"
            onPress={() => goto("/(app)/personal-info")}
          >
            <Box className="items-center flex flex-row gap-4">
              <ButtonIcon as={UserIcon} />
              <Box className="min-w-fit">
                <ButtonText>Personal Information</ButtonText>
              </Box>
              <Box className="flex-1" />
            </Box>
          </Button>

          <Button
            variant="outline"
            size="xl"
            className="grid grid-cols-3 rounded-xl"
            onPress={() => goto("/(app)/settings")}
          >
            <Box className="items-center flex flex-row gap-4">
              <ButtonIcon as={SettingsIcon} />
              <Box className="flex-1">
                <ButtonText>Settings</ButtonText>
              </Box>
              <Box className="flex-1" />
            </Box>
          </Button>

          <Button
            variant="outline"
            size="xl"
            className="grid grid-cols-3 rounded-xl"
          >
            <Box className="items-center flex flex-row gap-4">
              <ButtonIcon as={AtSignIcon} />
              <Box className="flex-1">
                <ButtonText onPress={() => goto("/(app)/settings/help")}>Help</ButtonText>
              </Box>
              <Box className="flex-1" />
            </Box>
          </Button>
        </VStack>
      </VStack>
    </SafeAreaView>

  )
}

type ErrorToastProps = {
  toast: {
    show: (props: InterfaceToastProps) => string;
    close: (id: string) => void;
    closeAll: () => void;
    isActive: (id: string) => boolean;
  },
  data?: ErrorDto,
}

function errorToast({ toast, data }: ErrorToastProps) {
  toast.show({
    placement: "top",
    render: (props) => <ErrorToast {...props} error={data} />
  });
}

