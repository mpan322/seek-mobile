/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Indicates the status code resulting from the geocoding operation. This field may contain the following values.
 */
export type DirectionsGeocodedWaypointGeocoderStatus = typeof DirectionsGeocodedWaypointGeocoderStatus[keyof typeof DirectionsGeocodedWaypointGeocoderStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DirectionsGeocodedWaypointGeocoderStatus = {
  OK: 'OK',
  ZERO_RESULTS: 'ZERO_RESULTS',
} as const;
