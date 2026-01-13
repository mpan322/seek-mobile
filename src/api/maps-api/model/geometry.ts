/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';
import type { Bounds } from './bounds';

/**
 * An object describing the location.
 */
export interface Geometry {
  location: LatLngLiteral;
  viewport: Bounds;
}
