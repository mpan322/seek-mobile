import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { MMKVStorage } from "./persist/mmkv";

type FilterState = {
  location: "only-center" | "everywhere";
  numberOfPeople: number;
  pricePerMonth: number;
  propertyType: "flat" | "house";
  ammenities: string[];

  setLocation: (location: "only-center" | "everywhere") => void;
  setNumberOfPeople: (numberOfPeople: number) => void;
  setPricePerMonth: (pricePerMonth: number) => void;
  setPropertyType: (propertyType: "flat" | "house") => void;
  setAmmenities: (ammenities: string[]) => void;
};

export const useFilterStore = create<FilterState>()(
  persist(
    (set) => ({
      location: "only-center",
      numberOfPeople: 0,
      pricePerMonth: 0,
      propertyType: "flat",
      ammenities: [],
      setLocation: (location) => set({ location }),
      setNumberOfPeople: (numberOfPeople) => set({ numberOfPeople }),
      setPricePerMonth: (pricePerMonth) => set({ pricePerMonth }),
      setPropertyType: (propertyType) => set({ propertyType }),
      setAmmenities: (ammenities) => set({ ammenities }),
    }),
    {
      name: "filter-store",
      storage: createJSONStorage(() => MMKVStorage),
      partialize: (state) => ({
        location: state.location,
        numberOfPeople: state.numberOfPeople,
        pricePerMonth: state.pricePerMonth,
        propertyType: state.propertyType,
        ammenities: state.ammenities,
      }),
    },
  ),
);
