/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ErrorDetail } from './errorDetail';

export interface ErrorObject {
  /** This is the same as the HTTP status of the response. */
  code: number;
  /** A short description of the error. */
  message: string;
  /** A list of errors which occurred. Each error contains an identifier for the type of error and a short description. */
  errors: ErrorDetail[];
  /** A status code that indicates the error type. */
  status?: string;
  /** Additional details about the error. */
  details?: ErrorDetail[];
}
