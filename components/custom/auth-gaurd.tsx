import { PropsWithChildren, useEffect } from "react";
import { useAuth } from "@/src/store/auth-store";
import { useRouter, useSegments } from "expo-router";
import { useNavigationState } from "@react-navigation/native";

type AuthGaurdProps = PropsWithChildren<{}>;

export function AuthGaurd({ children }: AuthGaurdProps) {
  console.log("[LOG] AuthGaurd rendering");
  const router = useRouter();
  const { _hasHydrated, accessToken, refreshToken } = useAuth((state) => state);

  const segements = useSegments();
  useEffect(() => {
    if (!_hasHydrated) {
      return;
    }

    console.log("[LOG] auth state changed");
    const isAuth = segements[0] == "(app)";

    const isLoggedIn: boolean =
      accessToken != undefined && refreshToken != undefined;
    console.log(isLoggedIn, accessToken, refreshToken);
    if (!isLoggedIn && isAuth) {
      console.log("[LOG] redirecting to main");
      router.replace("/");
    } else if (isLoggedIn && !isAuth) {
      console.log("[LOG] redirecting to home");
      router.replace("/(app)/(tabs)/home");
    }
  }, [accessToken, refreshToken, _hasHydrated, segements]);

  return <>{children}</>;
}
