import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { MMKVStorage } from "./persist/mmkv";
import { ListingsControllerGetFilteredListingsParams } from "../api/seek-api/model";

type FilterState = {
  data: ListingsControllerGetFilteredListingsParams
  setValue: <K extends keyof ListingsControllerGetFilteredListingsParams>(key: K)
    => (value: ListingsControllerGetFilteredListingsParams[K]) => void;
};

export const useFilterStore = create<FilterState>()(
  persist(
    (set) => ({
      data: {
        propertyType: "FLAT_APARTMENT",
        numOfPeople: 0,
        monthlyRentMin: 0,
        monthlyRentMax: 0,
        sizeSqMeters: 0,
        amenities: [],
        lng: 0,
        lat: 0,
      },
      setValue: (key) => (value) =>
        set(state => ({
          ...state,
          data: {
            ...state.data,
            [key]: value
          }
        }))
    }),
    {
      name: "filter-store",
      storage: createJSONStorage(() => MMKVStorage),
      partialize: (state) => state.data
    },
  ),
);
