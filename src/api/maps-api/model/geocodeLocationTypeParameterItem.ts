/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type GeocodeLocationTypeParameterItem = typeof GeocodeLocationTypeParameterItem[keyof typeof GeocodeLocationTypeParameterItem];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const GeocodeLocationTypeParameterItem = {
  APPROXIMATE: 'APPROXIMATE',
  GEOMETRIC_CENTER: 'GEOMETRIC_CENTER',
  RANGE_INTERPOLATED: 'RANGE_INTERPOLATED',
  ROOFTOP: 'ROOFTOP',
} as const;
