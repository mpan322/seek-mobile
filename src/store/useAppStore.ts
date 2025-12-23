import { create } from "zustand";

interface AppState {
  isLogged: boolean;
  setLogin: (status: boolean) => void;
}

export const useAppStore = create<AppState>((set) => ({
  isLogged: false,
  setLogin: (status) => set({ isLogged: status }),
}));

