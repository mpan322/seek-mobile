/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type CreateListingDtoFurnishingStatus = typeof CreateListingDtoFurnishingStatus[keyof typeof CreateListingDtoFurnishingStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const CreateListingDtoFurnishingStatus = {
  furnished: 'furnished',
  unfurnished: 'unfurnished',
  partFurnished: 'partFurnished',
} as const;
