/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';

export interface DirectionsViaWaypoint {
  /** The location of the waypoint. */
  location?: LatLngLiteral;
  /** The index of the step containing the waypoint. */
  step_index?: number;
  /** The position of the waypoint along the step's polyline, expressed as a ratio from 0 to 1. */
  step_interpolation?: number;
}
