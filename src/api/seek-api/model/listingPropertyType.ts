/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ListingPropertyType = typeof ListingPropertyType[keyof typeof ListingPropertyType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ListingPropertyType = {
  FLAT_APARTMENT: 'FLAT_APARTMENT',
  HOUSE: 'HOUSE',
  ROOM_IN_SHARED_HOUSE: 'ROOM_IN_SHARED_HOUSE',
  STUDIO: 'STUDIO',
  OTHER: 'OTHER',
} as const;
