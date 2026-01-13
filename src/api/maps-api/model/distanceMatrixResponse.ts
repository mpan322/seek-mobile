/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { DistanceMatrixRow } from './distanceMatrixRow';
import type { DistanceMatrixStatus } from './distanceMatrixStatus';

export interface DistanceMatrixResponse {
  /** An array of addresses as returned by the API from your original request. These are formatted by the geocoder and localized according to the language parameter passed with the request. This content is meant to be read as-is. Do not programatically parse the formatted addresses. */
  origin_addresses: string[];
  /** An array of addresses as returned by the API from your original request. As with `origin_addresses`, these are localized if appropriate. This content is meant to be read as-is. Do not programatically parse the formatted addresses. */
  destination_addresses: string[];
  /** An array of elements, which in turn each contain a `status`, `duration`, and `distance` element. */
  rows: DistanceMatrixRow[];
  /** Contains the status of the request, and may contain debugging information to help you track down why the request failed. */
  status: DistanceMatrixStatus;
  /** A string containing the human-readable text of any errors encountered while the request was being processed. */
  error_message?: string;
}
