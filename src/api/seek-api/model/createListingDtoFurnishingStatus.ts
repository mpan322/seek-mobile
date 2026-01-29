/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type CreateListingDtoFurnishingStatus = typeof CreateListingDtoFurnishingStatus[keyof typeof CreateListingDtoFurnishingStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const CreateListingDtoFurnishingStatus = {
  Furnished: 'Furnished',
  Unfurnished: 'Unfurnished',
  'Part-Furnished': 'Part-Furnished',
} as const;
