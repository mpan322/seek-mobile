/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Restrict results to a specified area, by specifying either a radius plus lat/lng, or two lat/lng pairs representing the points of a rectangle.
- Circular: A string specifying radius in meters, plus lat/lng in decimal degrees. Use the following format: `circle:radius@lat,lng`.
- Rectangular: A string specifying two lat/lng pairs in decimal degrees, representing the south/west and north/east points of a rectangle. Use the following format:`rectangle:south,west|north,east`. Note that east/west values are wrapped to the range -180, 180, and north/south values are clamped to the range -90, 90.

 */
export type PlacesLocationrestrictionParameter = string;
