/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ModeParameter = typeof ModeParameter[keyof typeof ModeParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ModeParameter = {
  driving: 'driving',
  bicycling: 'bicycling',
  transit: 'transit',
  walking: 'walking',
} as const;
