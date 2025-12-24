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
import { ModalContext } from "@gluestack-ui/core/modal/creator";
import React from "react";
import { CloseIcon, Icon } from "@/components/ui/icon";
import { SafeAreaView } from "react-native-safe-area-context";
import { View } from "react-native";

export default function SettingsScreen() {
  const [open, setOpen] = useState(false);

  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <View className="bg-background-0 h-full">
      <VStack className="px-6 gap-2">
        <FlatButton
          onPress={() => goto("/(main)/settings/modify-password")}
          text="Modify Password"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(main)/settings/permissions")}
          text="Permissions"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(main)/settings/privacy-policy")}
          text="Privacy Policy"
        />
        <Divider />
        <FlatButton
          onPress={() => goto("/(main)/settings/terms-of-service")}
          text="Terms of Service"
        />
        <Divider />
        <FlatButton onPress={() => goto("/(main)/settings/help")} text="Help" />
        <Divider />
        <Box className="items-start gap-2 pt-2">
          <Button variant="link" action="secondary" size="lg">
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
        <ModalBackdrop  style={{ backgroundColor: "red", opacity: 1 }} />
        <SafeAreaView>
          <ModalContent style={{ width: "80%" }} className="gap-4">
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
              <Button
                action="negative"
                size="lg"
                onPress={() => setOpen(false)}
              >
                <ButtonText>Delete Account</ButtonText>
              </Button>
            </ModalFooter>
          </ModalContent>
        </SafeAreaView>
      </Modal>
    </View>
  );
}
