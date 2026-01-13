/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { PlaceAutocompleteMatchedSubstring } from './placeAutocompleteMatchedSubstring';

export interface PlaceAutocompleteStructuredFormat {
  /** Contains the main text of a prediction, usually the name of the place. */
  main_text: string;
  /** Contains an array with `offset` value and `length`. These describe the location of the entered term in the prediction result text, so that the term can be highlighted if desired. */
  main_text_matched_substrings: PlaceAutocompleteMatchedSubstring[];
  /** Contains the secondary text of a prediction, usually the location of the place. */
  secondary_text: string;
  /** Contains an array with `offset` value and `length`. These describe the location of the entered term in the prediction result text, so that the term can be highlighted if desired. */
  secondary_text_matched_substrings?: PlaceAutocompleteMatchedSubstring[];
}
