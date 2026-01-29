/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ListingFurnishingStatus = typeof ListingFurnishingStatus[keyof typeof ListingFurnishingStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ListingFurnishingStatus = {
  Furnished: 'Furnished',
  Unfurnished: 'Unfurnished',
  'Part-Furnished': 'Part-Furnished',
} as const;
