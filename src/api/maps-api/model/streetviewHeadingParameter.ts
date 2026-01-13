/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Indicates the compass heading of the camera. Accepted values are from 0 to 360 (both values indicating North, with 90 indicating East, and 180 South). If no heading is specified, a value will be calculated that directs the camera towards the specified location, from the point at which the closest photograph was taken.

 */
export type StreetviewHeadingParameter = number;
