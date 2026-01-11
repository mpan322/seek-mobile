/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type CreateListingDtoPropertyType = typeof CreateListingDtoPropertyType[keyof typeof CreateListingDtoPropertyType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const CreateListingDtoPropertyType = {
  FLAT_APARTMENT: 'FLAT_APARTMENT',
  HOUSE: 'HOUSE',
  ROOM_IN_SHARED_HOUSE: 'ROOM_IN_SHARED_HOUSE',
  STUDIO: 'STUDIO',
  OTHER: 'OTHER',
} as const;
