/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface PlaceAutocompleteTerm {
  /** The text of the term. */
  value: string;
  /** Defines the start position of this term in the description, measured in Unicode characters */
  offset: number;
}
