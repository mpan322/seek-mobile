/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { Place } from './place';
import type { PlacesDetailsStatus } from './placesDetailsStatus';

export interface PlacesDetailsResponse {
  /** May contain a set of attributions about this listing which must be displayed to the user (some listings may not have attribution). */
  html_attributions: string[];
  /** Contains the detailed information about the place requested. */
  result: Place;
  /** Contains the status of the request, and may contain debugging information to help you track down why the request failed. */
  status: PlacesDetailsStatus;
  /** When the service returns additional information about the request specification, there may be an additional `info_messages` field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
 */
  info_messages?: string[];
}
