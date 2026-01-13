/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ErrorDetailMetadata } from './errorDetailMetadata';
import type { FieldViolation } from './fieldViolation';

export interface ErrorDetail {
  /** The type of error. */
  '@type'?: string;
  /** A short description of the error. */
  message?: string;
  /** A reason for the error. */
  reason?: string;
  /** The domain in which the error occurred. */
  domain?: string;
  /** Additional metadata about the error. */
  metadata?: ErrorDetailMetadata;
  /** A list of field violations. */
  fieldViolations?: FieldViolation[];
}
