import "@/global.css";
import { Slot, SplashScreen, usePathname } from "expo-router";
import "react-native-reanimated";
import { GluestackUIProvider } from "@/components/ui/gluestack-ui-provider";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import axios from "axios";
import { DarkTheme, ThemeProvider } from "@react-navigation/native";
import { useEffect } from "react";
import { useAuth } from "@/src/store/auth-store";
import { AuthGaurd } from "@/components/custom/auth-gaurd";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { BottomSheetModalProvider } from "@gorhom/bottom-sheet";
import { PortalProvider } from "@gluestack-ui/core/lib/esm/overlay/aria";
export { ErrorBoundary } from "expo-router";

export const unstable_settings = {
  // anchor: "(tabs)",
  initialRouteName: "/",
};

export const queryClient = new QueryClient();

axios.defaults.baseURL = "http://192.168.1.51:3000";
axios.defaults.headers["platform"] = "mobile";

SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  const path = usePathname();
  useEffect(() => {
    console.log(`path=${path}`);
  }, [path]);

  // control the splash screen
  const _hasHydrated = useAuth((state) => state._hasHydrated);
  useEffect(() => {
    if (!_hasHydrated) {
      console.log(
        "[LOG] waiting for auth state hydration before dropping splash",
      );
    }
    SplashScreen.hide();
  }, [_hasHydrated]);

  // // prevent rendering until auth state is hydrated
  // if (!_hasHydrated) {
  //   return <Slot />;
  // }

  return (
    <QueryClientProvider client={queryClient}>
      <GluestackUIProvider mode="dark">
        <ThemeProvider value={DarkTheme}>
          <GestureHandlerRootView style={{ flex: 1 }}>
            <AuthGaurd>
              <Slot />
            </AuthGaurd>
          </GestureHandlerRootView>
        </ThemeProvider>
      </GluestackUIProvider>
    </QueryClientProvider>
  );
}
