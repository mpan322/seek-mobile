/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type StreetviewSourceParameter = typeof StreetviewSourceParameter[keyof typeof StreetviewSourceParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const StreetviewSourceParameter = {
  default: 'default',
  outdoor: 'outdoor',
} as const;
