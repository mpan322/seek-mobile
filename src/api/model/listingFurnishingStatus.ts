/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ListingFurnishingStatus = typeof ListingFurnishingStatus[keyof typeof ListingFurnishingStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ListingFurnishingStatus = {
  furnished: 'furnished',
  unfurnished: 'unfurnished',
  partFurnished: 'partFurnished',
} as const;
