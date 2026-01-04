/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ListingEpcRating = typeof ListingEpcRating[keyof typeof ListingEpcRating];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ListingEpcRating = {
  A: 'A',
  B: 'B',
  C: 'C',
  D: 'D',
  E: 'E',
  F: 'F',
  G: 'G',
} as const;
