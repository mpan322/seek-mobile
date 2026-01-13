/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { PlaceOpeningHoursPeriod } from './placeOpeningHoursPeriod';
import type { PlaceSpecialDay } from './placeSpecialDay';

/**
 * An object describing the opening hours of a place.
 */
export interface PlaceOpeningHours {
  /** A boolean value indicating if the place is open at the current time. */
  open_now?: boolean;
  /** An array of opening periods covering seven days, starting from Sunday, in chronological order.
 */
  periods?: PlaceOpeningHoursPeriod[];
  /** An array of up to seven entries corresponding to the next seven days.
 */
  special_days?: PlaceSpecialDay[];
  /** A type string used to identify the type of secondary hours (for example, `DRIVE_THROUGH`, `HAPPY_HOUR`, `DELIVERY`, `TAKEOUT`, `KITCHEN`, `BREAKFAST`, `LUNCH`, `DINNER`, `BRUNCH`, `PICKUP`, `SENIOR_HOURS`). Set for `secondary_opening_hours` only. */
  type?: string;
  /** An array of strings describing in human-readable text the hours of the place. */
  weekday_text?: string[];
}
