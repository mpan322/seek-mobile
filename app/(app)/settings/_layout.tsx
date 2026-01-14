import { Slot } from "expo-router";
import { SafeAreaView } from "react-native-safe-area-context";

export default function StackLayout() {
  return (
    <SafeAreaView>
      <Slot />
    </SafeAreaView>
  );
}
