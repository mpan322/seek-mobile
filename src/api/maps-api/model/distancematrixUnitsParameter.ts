/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type DistancematrixUnitsParameter = typeof DistancematrixUnitsParameter[keyof typeof DistancematrixUnitsParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DistancematrixUnitsParameter = {
  imperial: 'imperial',
  metric: 'metric',
} as const;
