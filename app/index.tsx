import { Box } from "@/components/ui/box";
import { Button, ButtonText } from "@/components/ui/button";
import { Href, useRouter } from "expo-router";
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
      </Box>
    </SafeAreaView>
  );
}
