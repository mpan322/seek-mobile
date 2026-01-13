/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type TransitRoutingPreferenceParameter = typeof TransitRoutingPreferenceParameter[keyof typeof TransitRoutingPreferenceParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const TransitRoutingPreferenceParameter = {
  less_walking: 'less_walking',
  fewer_transfers: 'fewer_transfers',
} as const;
