/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { PlaceAutocompletePrediction } from './placeAutocompletePrediction';
import type { PlacesAutocompleteStatus } from './placesAutocompleteStatus';

export interface PlacesAutocompleteResponse {
  /** Contains an array of predictions.
 */
  predictions: PlaceAutocompletePrediction[];
  /** Contains the status of the request, and may contain debugging information to help you track down why the request failed. */
  status: PlacesAutocompleteStatus;
  /** When the service returns a status code other than `OK<`, there may be an additional `error_message` field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
 */
  error_message?: string;
  /** When the service returns additional information about the request specification, there may be an additional `info_messages` field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
 */
  info_messages?: string[];
}
