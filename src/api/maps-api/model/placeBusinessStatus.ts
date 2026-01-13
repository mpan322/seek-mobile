/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Indicates the operational status of the place, if it is a business. If no data exists, `business_status` is not returned.

 */
export type PlaceBusinessStatus = typeof PlaceBusinessStatus[keyof typeof PlaceBusinessStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const PlaceBusinessStatus = {
  OPERATIONAL: 'OPERATIONAL',
  CLOSED_TEMPORARILY: 'CLOSED_TEMPORARILY',
  CLOSED_PERMANENTLY: 'CLOSED_PERMANENTLY',
} as const;
