import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { SecureStorage } from "./persist/secure";

interface AuthState {
  isLogged: boolean;
  login: () => void;
  logout: () => void;
}

export const useAuth = create<AuthState>()(
  persist(
    (set) => ({
      isLogged: false,
      login: () => set({ isLogged: true }),
      logout: () => set({ isLogged: false }),
    }),
    {
      name: "auth-store",
      storage: createJSONStorage(() => SecureStorage),
      onRehydrateStorage(state?: AuthState, error?: unknown) {
        console.log("[LOG] reloading auth state from storage");

        if (error) {
          console.error(
            "[ERROR] error rehydrating auth state from storage:",
            error,
          );
          return;
        }
        console.log("[LOG] auth state rehydrated from storage:", state);
      },
    },
  ),
);
