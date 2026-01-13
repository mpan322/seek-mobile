/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';

export interface DirectionsTransitStop {
  /** The location of the stop. */
  location: LatLngLiteral;
  /** The name of the transit stop. */
  name: string;
}
