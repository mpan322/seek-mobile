/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface ErrorDto {
  /** HTTP status code */
  statusCode: number;
  /** HTTP error message */
  message: string;
  /** Error type */
  error?: string;
}
