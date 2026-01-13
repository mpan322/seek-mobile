/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface FieldViolation {
  /** The name of the invalid field. */
  field: string;
  /** A short description of the error. */
  description: string;
}
