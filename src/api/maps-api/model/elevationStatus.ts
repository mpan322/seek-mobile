/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Status codes returned by service.
- `OK` indicating the API request was successful.
- `DATA_NOT_AVAILABLE` indicating that there's no available data for the input locations. 
- `INVALID_REQUEST` indicating the API request was malformed.
- `OVER_DAILY_LIMIT` indicating any of the following:
  - The API key is missing or invalid.
  - Billing has not been enabled on your account.
  - A self-imposed usage cap has been exceeded.
  - The provided method of payment is no longer valid (for example, a credit card has expired).
- `OVER_QUERY_LIMIT` indicating the requestor has exceeded quota.
- `REQUEST_DENIED` indicating the API did not complete the request.
- `UNKNOWN_ERROR` indicating an unknown error.

 */
export type ElevationStatus = typeof ElevationStatus[keyof typeof ElevationStatus];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ElevationStatus = {
  OK: 'OK',
  DATA_NOT_AVAILABLE: 'DATA_NOT_AVAILABLE',
  INVALID_REQUEST: 'INVALID_REQUEST',
  OVER_DAILY_LIMIT: 'OVER_DAILY_LIMIT',
  OVER_QUERY_LIMIT: 'OVER_QUERY_LIMIT',
  REQUEST_DENIED: 'REQUEST_DENIED',
  UNKNOWN_ERROR: 'UNKNOWN_ERROR',
} as const;
