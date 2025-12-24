import { Slot, Stack, usePathname } from "expo-router";
import "react-native-reanimated";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";
import "@/global.css";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import axios from "axios";
import { DarkTheme, ThemeProvider } from "@react-navigation/native";
import { useEffect } from "react";
export { ErrorBoundary } from "expo-router";

export const unstable_settings = {
  anchor: "(tabs)",
};

const queryClient = new QueryClient();

axios.defaults.baseURL = "http://192.168.86.55:3000";

export default function RootLayout() {
  const path = usePathname();
  useEffect(() => {
    console.log(`path=${path}`);
  }, [path]);

  return (
    <GluestackUIProvider mode="dark">
      <ThemeProvider value={DarkTheme}>
        <QueryClientProvider client={queryClient}>
          <Slot />
        </QueryClientProvider>
      </ThemeProvider>
    </GluestackUIProvider>
  );
}
