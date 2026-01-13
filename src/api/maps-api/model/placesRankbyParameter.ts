/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type PlacesRankbyParameter = typeof PlacesRankbyParameter[keyof typeof PlacesRankbyParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const PlacesRankbyParameter = {
  prominence: 'prominence',
  distance: 'distance',
} as const;
