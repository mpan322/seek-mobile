import { Stack } from "expo-router";
import TestScreen from "./test";

export default function Layout() {
  return (
    <Stack
      screenOptions={{
        headerShown: false,
      }}
    >
      <Stack.Screen name="test" component={TestScreen} />
    </Stack>
  );
}
