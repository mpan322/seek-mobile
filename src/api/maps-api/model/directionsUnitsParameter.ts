/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type DirectionsUnitsParameter = typeof DirectionsUnitsParameter[keyof typeof DirectionsUnitsParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DirectionsUnitsParameter = {
  imperial: 'imperial',
  metric: 'metric',
} as const;
