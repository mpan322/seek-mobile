/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';

export type Elevation200ResultsItem = {
  elevation?: number;
  resolution?: number;
  location?: LatLngLiteral;
};
