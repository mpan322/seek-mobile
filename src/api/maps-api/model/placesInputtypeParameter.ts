/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type PlacesInputtypeParameter = typeof PlacesInputtypeParameter[keyof typeof PlacesInputtypeParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const PlacesInputtypeParameter = {
  textquery: 'textquery',
  phonenumber: 'phonenumber',
} as const;
