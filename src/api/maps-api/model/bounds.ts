/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';

/**
 * A rectangle in geographical coordinates from points at the southwest and northeast corners.
 */
export interface Bounds {
  northeast: LatLngLiteral;
  southwest: LatLngLiteral;
}
