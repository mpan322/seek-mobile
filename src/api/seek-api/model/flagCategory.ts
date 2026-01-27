/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type FlagCategory = typeof FlagCategory[keyof typeof FlagCategory];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const FlagCategory = {
  INNAPPROPRIATE_BEHAVIOUR: 'INNAPPROPRIATE_BEHAVIOUR',
  OTHER: 'OTHER',
} as const;
