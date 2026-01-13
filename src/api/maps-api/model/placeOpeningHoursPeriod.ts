/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { PlaceOpeningHoursPeriodDetail } from './placeOpeningHoursPeriodDetail';

export interface PlaceOpeningHoursPeriod {
  /** Contains a pair of day and time objects describing when the place opens. */
  open: PlaceOpeningHoursPeriodDetail;
  /** May contain a pair of day and time objects describing when the place closes. If a place is always open, the close section will be missing from the response. Clients can rely on always-open being represented as an open period containing day with value `0` and time with value `0000`, and no `close`.
 */
  close?: PlaceOpeningHoursPeriodDetail;
}
