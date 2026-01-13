/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface NearestRoadsError {
  /** This is the same as the HTTP status of the response. */
  code: number;
  /** A short description of the error. */
  message: string;
  /** An error such as `INVALID_ARGUMENT`. */
  status: string;
}
