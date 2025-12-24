import { Box } from "@/components/ui/box";
import { Button, ButtonText } from "@/components/ui/button";
import { Href, useRouter } from "expo-router";
import { useEffect } from "react";
import { SafeAreaView } from "react-native-safe-area-context";

export default function Base() {
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
          onPress={() => goto("/login")}
        >
          <ButtonText>To Login</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(main)/(tabs)/home")}
        >
          <ButtonText>To Home</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(main)/settings")}
        >
          <ButtonText>To Settings</ButtonText>
        </Button>
        <Button
          variant="solid"
          action="primary"
          className="w-full"
          onPress={() => goto("/(main)/settings/previous-flags")}
        >
          <ButtonText>To Flags</ButtonText>
        </Button>
      </Box>
    </SafeAreaView>
  );
}
