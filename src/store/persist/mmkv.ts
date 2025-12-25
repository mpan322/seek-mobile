import { StateStorage } from "zustand/middleware";
import { createMMKV } from "react-native-mmkv";

const storage = createMMKV({
  id: "seek-store",
  readOnly: false,
});

export const MMKVStorage: StateStorage = {
  setItem: (key, value) => storage.set(key, value),
  getItem: (key) => storage.getString(key) ?? null,
  removeItem: (key) => storage.remove(key),
};


