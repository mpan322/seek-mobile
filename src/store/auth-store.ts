import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { SecureStorage } from "./persist/secure";

type Tokens = {
  accessToken: string | undefined;
  refreshToken: string | undefined;
};

interface AuthState {
  accessToken: string | undefined;
  refreshToken: string | undefined;
  _hasHydrated: boolean;
  login: (tokens: Tokens) => void;
  logout: () => void;
  setHydrated: () => void;
}

export const useAuth = create<AuthState>()(
  persist(
    (set) => ({
      accessToken: undefined,
      refreshToken: undefined,
      _hasHydrated: false,
      login: (tokens) => {
        return set({
          accessToken: tokens.accessToken,
          refreshToken: tokens.refreshToken,
        });
      },
      logout: () => set({ accessToken: undefined, refreshToken: undefined }),
      setHydrated: () => set({ _hasHydrated: true }),
    }),
    {
      name: "auth-store",
      storage: createJSONStorage(() => SecureStorage),
      partialize: (state) => ({
        accessToken: state.accessToken,
        refreshToken: state.refreshToken,
      }),
      onRehydrateStorage(state?: AuthState, error?: unknown) {
        console.log("[LOG] reloading auth state from storage");

        if (error) {
          console.error(
            "[ERROR] error rehydrating auth state from storage:",
            error,
          );
        } else {
          console.log("[LOG] auth state rehydrated from storage:", state);
        }

        return () => state?.setHydrated();
      },
    },
  ),
);
