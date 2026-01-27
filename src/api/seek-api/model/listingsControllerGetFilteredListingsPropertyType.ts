/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ListingsControllerGetFilteredListingsPropertyType = typeof ListingsControllerGetFilteredListingsPropertyType[keyof typeof ListingsControllerGetFilteredListingsPropertyType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ListingsControllerGetFilteredListingsPropertyType = {
  FLAT_APARTMENT: 'FLAT_APARTMENT',
  HOUSE: 'HOUSE',
  ROOM_IN_SHARED_HOUSE: 'ROOM_IN_SHARED_HOUSE',
  STUDIO: 'STUDIO',
  OTHER: 'OTHER',
} as const;
