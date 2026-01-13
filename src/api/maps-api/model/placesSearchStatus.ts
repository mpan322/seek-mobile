/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Status codes returned by service.
- `OK` indicating the API request was successful.
- `ZERO_RESULTS` indicating that the search was successful but returned no results. This may occur if the search was passed a `latlng` in a remote location.
- `INVALID_REQUEST` indicating the API request was malformed, generally due to missing required query parameter (`location` or `radius`).
- `OVER_QUERY_LIMIT` indicating any of the following:
  - You have exceeded the QPS limits.
  - Billing has not been enabled on your account.
  - The monthly $200 credit, or a self-imposed usage cap, has been exceeded.
  - The provided method of payment is no longer valid (for example, a credit card has expired).
  See the [Maps FAQ](https://developers.google.com/maps/faq#over-limit-key-error) for more information about how to resolve this error.
- `REQUEST_DENIED` indicating that your request was denied, generally because:
  - The request is missing an API key.
  - The `key` parameter is invalid.
- `UNKNOWN_ERROR` indicating an unknown error.

 */
export type PlacesSearchStatus = typeof PlacesSearchStatus[keyof typeof PlacesSearchStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const PlacesSearchStatus = {
  OK: 'OK',
  ZERO_RESULTS: 'ZERO_RESULTS',
  INVALID_REQUEST: 'INVALID_REQUEST',
  OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  REQUEST_DENIED: 'REQUEST_DENIED',
  UNKNOWN_ERROR: 'UNKNOWN_ERROR',
} as const;
