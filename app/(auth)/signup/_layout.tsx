import {
  ProgressBar,
  ProgressProvider,
} from "@/components/custom/progress-bar";
import { Box } from "@/components/ui/box";
import { Stack } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";

export default function SignupLayout() {
  const { top } = useSafeAreaInsets();

  return (
    <ProgressProvider>
      <Box style={{ paddingTop: top + 16, paddingHorizontal: 20 }}>
        <ProgressBar />
      </Box>
      <Stack screenOptions={{ headerShown: false }} />
    </ProgressProvider>
  );
}
