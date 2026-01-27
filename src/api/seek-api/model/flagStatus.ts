/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type FlagStatus = typeof FlagStatus[keyof typeof FlagStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const FlagStatus = {
  UNDER_REVIEW: 'UNDER_REVIEW',
  ACCOUNT_SUSPENDED: 'ACCOUNT_SUSPENDED',
  NO_ACTION: 'NO_ACTION',
} as const;
