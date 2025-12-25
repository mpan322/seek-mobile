import { StateStorage } from "zustand/middleware";
import * as SecureStore from "expo-secure-store";

export const SecureStorage: StateStorage = {
  async setItem(key, value) {
    return await SecureStore.setItemAsync(key, value);
  },
  async getItem(key) {
    return (await SecureStore.getItemAsync(key)) ?? null;
  },
  async removeItem(key) {
    return await SecureStore.deleteItemAsync(key);
  },
};
