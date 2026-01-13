/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { SnappedPoint } from './snappedPoint';

export interface NearestRoadsResponse {
  /** An array of snapped points. Sometimes containing several snapped points for the same point with differing placeId or location. */
  snappedPoints?: SnappedPoint[];
}
