/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { SnappedPoint } from './snappedPoint';

export interface SnapToRoadsResponse {
  /** An array of snapped points. */
  snappedPoints?: SnappedPoint[];
  /** A string containing a user-visible warning. */
  warningMessage?: string;
}
