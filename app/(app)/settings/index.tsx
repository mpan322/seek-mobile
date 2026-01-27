import { VStack } from "@/components/ui/vstack";
import { Divider } from "@/components/ui/divider";
import { Box } from "@/components/ui/box";
import { FlatButton } from "@/components/custom/flat-button";
import { Href, useRouter } from "expo-router";
import { Button, ButtonText } from "@/components/ui/button";
import {
  Modal,
  ModalBackdrop,
  ModalBody,
  ModalCloseButton,
  ModalContent,
  ModalFooter,
  ModalHeader,
} from "@/components/ui/modal";
import { useState } from "react";
import { Text } from "@/components/ui/text";
import React from "react";
import { CloseIcon, Icon } from "@/components/ui/icon";
import { View } from "react-native";
import { useAuth } from "@/src/store/auth-store";
import { BackButton } from "@/components/custom/back-button";
import { SafeAreaView } from "react-native-safe-area-context";

export default function SettingsScreen() {
  const [open, setOpen] = useState(false);
  const logout = useAuth((val) => val.logout);

  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <SafeAreaView className="bg-background-0 h-full">
      <VStack className="px-6 gap-2">
        <BackButton />
        <FlatButton
          onPress={() => goto("/(app)/settings/modify-password")}
          text="Modify Password"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(app)/settings/permissions")}
          text="Permissions"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(app)/settings/privacy-policy")}
          text="Privacy Policy"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(app)/settings/terms-of-service")}
          text="Terms of Service"
        />
        <Divider />
        <Box className="items-start gap-2 pt-2">
          <Button
            onPress={() => logout()}
            variant="link"
            action="secondary"
            size="lg"
          >
            <ButtonText>Logout</ButtonText>
          </Button>
          <Button
            variant="link"
            action="negative"
            size="lg"
            onPress={() => setOpen(true)}
          >
            <ButtonText>Delete Account</ButtonText>
          </Button>
        </Box>
      </VStack>
      <Modal
        isOpen={open}
        onClose={() => setOpen(false)}
        closeOnOverlayClick
        size="xs"
      >
        <ModalBackdrop
          style={{ backgroundColor: "rgba(80, 80, 80, 0.5)" }}
        />
        <ModalContent className="gap-2 w-[80%] rounded-xl">
          <ModalHeader>
            <Text size="xl" bold>
              Confirm Account Deletion
            </Text>
            <ModalCloseButton hitSlop={4} onPress={() => setOpen(false)}>
              <Icon
                size="lg"
                as={CloseIcon}
                className="stroke-background-500"
              />
            </ModalCloseButton>
          </ModalHeader>
          <ModalBody>
            <Text className="text-center">
              Are you sure you want to delete your account?
            </Text>
          </ModalBody>
          <ModalFooter className="justify-center">
            <Button action="negative" size="lg" onPress={() => setOpen(false)}>
              <ButtonText className="text-white">Delete Account</ButtonText>
            </Button>
          </ModalFooter>
        </ModalContent>
      </Modal>
    </SafeAreaView>
  );
}
