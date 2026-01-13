/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ErrorObject } from './errorObject';

/**
 * In the case of an error, a standard format error response body will be returned and the HTTP status code will be set to an error status. The response contains an object with a single error object.
 */
export interface ErrorResponse {
  /** An error return by the server. */
  error: ErrorObject;
}
