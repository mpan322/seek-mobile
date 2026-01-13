/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LatLngLiteral } from './latLngLiteral';
import type { GeocodingGeometryLocationType } from './geocodingGeometryLocationType';
import type { Bounds } from './bounds';

/**
 * An object describing the location.
 */
export interface GeocodingGeometry {
  location: LatLngLiteral;
  /** Stores additional data about the specified location. The following values are currently supported:

- "ROOFTOP" indicates that the returned result is a precise geocode for which we have location information accurate down to street address precision.
- "RANGE_INTERPOLATED" indicates that the returned result reflects an approximation (usually on a road) interpolated between two precise points (such as intersections). Interpolated results are generally returned when rooftop geocodes are unavailable for a street address.
- "GEOMETRIC_CENTER" indicates that the returned result is the geometric center of a result such as a polyline (for example, a street) or polygon (region).
- "APPROXIMATE" indicates that the returned result is approximate.
 */
  location_type: GeocodingGeometryLocationType;
  bounds?: Bounds;
  viewport: Bounds;
}
