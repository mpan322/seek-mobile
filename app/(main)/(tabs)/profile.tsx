import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Avatar } from "@/components/ui/avatar";
import { Button, ButtonIcon, ButtonText } from "@/components/ui/button";
import { AtSignIcon } from "@/components/ui/icon";
import { Box } from "@/components/ui/box";
import { Href, useRouter } from "expo-router";

export default function SettingsScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  }

  return (
    <SafeAreaView className="px-6">
      <VStack className="items-center" style={{ gap: 40 }}>
        <VStack className="items-center gap-2">
          <Avatar size="xl" />
          <Text size="xl" bold>
            Jon Cena
          </Text>
        </VStack>
        <VStack className="gap-6 w-full">
          <Button
            variant="outline"
            size="xl"
            className="grid grid-cols-3 rounded-xl"
          >
            <Box className="items-center flex flex-row">
              <Box className="flex-1">
                <ButtonIcon as={AtSignIcon} />
              </Box>
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
            onPress={() => goto("/(main)/settings")}
          >
            <Box className="items-center flex flex-row">
              <Box className="flex-1">
                <ButtonIcon as={AtSignIcon} />
              </Box>
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
            <Box className="items-center flex flex-row">
              <Box className="flex-1">
                <ButtonIcon as={AtSignIcon} />
              </Box>
              <Box className="flex-1">
                <ButtonText>Help</ButtonText>
              </Box>
              <Box className="flex-1" />
            </Box>
          </Button>
        </VStack>
      </VStack>
    </SafeAreaView>
  );
}
