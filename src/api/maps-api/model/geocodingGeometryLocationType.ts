/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Stores additional data about the specified location. The following values are currently supported:

- "ROOFTOP" indicates that the returned result is a precise geocode for which we have location information accurate down to street address precision.
- "RANGE_INTERPOLATED" indicates that the returned result reflects an approximation (usually on a road) interpolated between two precise points (such as intersections). Interpolated results are generally returned when rooftop geocodes are unavailable for a street address.
- "GEOMETRIC_CENTER" indicates that the returned result is the geometric center of a result such as a polyline (for example, a street) or polygon (region).
- "APPROXIMATE" indicates that the returned result is approximate.

 */
export type GeocodingGeometryLocationType = typeof GeocodingGeometryLocationType[keyof typeof GeocodingGeometryLocationType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const GeocodingGeometryLocationType = {
  ROOFTOP: 'ROOFTOP',
  RANGE_INTERPOLATED: 'RANGE_INTERPOLATED',
  GEOMETRIC_CENTER: 'GEOMETRIC_CENTER',
  APPROXIMATE: 'APPROXIMATE',
} as const;
