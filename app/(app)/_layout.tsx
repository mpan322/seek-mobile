import { Stack } from "expo-router";

export default function Layout() {
  return (
    <Stack>
      <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
      <Stack.Screen name="filters" options={{ headerShown: false }} />
      <Stack.Screen name="(settings)" />
    </Stack>
  );
}
