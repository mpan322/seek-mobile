import { Box } from "@/components/ui/box";
import { Button, ButtonText } from "@/components/ui/button";
import { Href, useRouter } from "expo-router";
import { useEffect } from "react";
import { SafeAreaView } from "react-native-safe-area-context";

export default function Index() {
  const router = useRouter();
  function goto(path: Href) {
    router.navigate(path);
  }

  return (
    <SafeAreaView>
      <Box className="p-6 flex flex-col gap-4">
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(auth)/login")}
        >
          <ButtonText>To Login</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(app)/(tabs)/home")}
        >
          <ButtonText>To Home</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(app)/settings")}
        >
          <ButtonText>To Settings</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(app)/settings/previous-flags")}
        >
          <ButtonText>To Flags</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(auth)/signup/profile-photo")}
        >
          <ButtonText>To Profile Photo</ButtonText>
        </Button>
      </Box>
    </SafeAreaView>
  );
}
