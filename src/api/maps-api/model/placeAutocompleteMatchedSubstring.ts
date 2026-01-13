/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface PlaceAutocompleteMatchedSubstring {
  /** Length of the matched substring in the prediction result text. */
  length: number;
  /** Start location of the matched substring in the prediction result text. */
  offset: number;
}
