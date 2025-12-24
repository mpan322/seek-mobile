import { Stack } from "expo-router";
import { SafeAreaView } from "react-native-safe-area-context";

export default function StackLayout() {
  console.log("layout");
  return (
    <SafeAreaView>
      <Stack />
    </SafeAreaView>
  );
}
