/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';
import type { StreetViewStatus } from './streetViewStatus';

export interface StreetViewResponse {
  /** An array of snapped points. */
  copyright?: string;
  /** A string indicating year and month that the panorama was captured. */
  date?: string;
  /** The location of the panorama. */
  location?: LatLngLiteral;
  /** A specific panorama ID. These are generally stable, though panoramas may change ID over time as imagery is refreshed. */
  pano_id?: string;
  /** The status of the request. */
  status: StreetViewStatus;
}
