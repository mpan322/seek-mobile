/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * @deprecated
 */
export interface DirectionsTrafficSpeedEntry {
  /** The current traffic/speed conditions on this portion of a path. */
  speed_category: string;
  /** The offset along the path (in meters) up to which this speed category is valid. */
  offset_meters: number;
}
