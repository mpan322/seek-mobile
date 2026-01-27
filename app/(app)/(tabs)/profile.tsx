import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Avatar, AvatarImage } from "@/components/ui/avatar";
import { Button, ButtonIcon, ButtonText } from "@/components/ui/button";
import { AtSignIcon } from "@/components/ui/icon";
import { Box } from "@/components/ui/box";
import { Href, useRouter } from "expo-router";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { SettingsIcon } from "@/components/ui/icon/index";
import { UserIcon } from "lucide-react-native";

export default function SettingsScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  const { data } = useAuthControllerCurrentUser();

  return (
    <SafeAreaView className="px-6">
      <VStack className="items-center" style={{ gap: 40 }}>
        <VStack className="items-center gap-2">
          <Avatar size="xl">
            <AvatarImage
              source={{
                uri: data?.profilePicUrl,
              }}
            />
          </Avatar>
          <Text size="xl" bold>
            {data?.name}
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
  );
}
