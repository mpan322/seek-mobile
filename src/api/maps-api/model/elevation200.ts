/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ElevationStatus } from './elevationStatus';
import type { Elevation200ResultsItem } from './elevation200ResultsItem';

export type Elevation200 = {
  /** When the service returns a status code other than `OK<`, there may be an additional `error_message` field within the response object. This field contains more detailed information about thereasons behind the given status code. This field is not always returned, and its content is subject to change.
 */
  error_message?: string;
  status: ElevationStatus;
  results: Elevation200ResultsItem[];
};
