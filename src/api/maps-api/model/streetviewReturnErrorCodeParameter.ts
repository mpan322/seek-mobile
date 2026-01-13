/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Indicates whether the API should return a non `200 Ok` HTTP status when no image is found (`404 NOT FOUND`), or in response to an invalid request (400 BAD REQUEST). Valid values are `true` and `false`. If set to `true`, an error message is returned in place of the generic gray image. This eliminates the need to make a separate call to check for image availability.

 */
export type StreetviewReturnErrorCodeParameter = boolean;
