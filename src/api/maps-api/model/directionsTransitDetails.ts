/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { DirectionsTransitStop } from './directionsTransitStop';
import type { TimeZoneTextValueObject } from './timeZoneTextValueObject';
import type { DirectionsTransitLine } from './directionsTransitLine';

/**
 * Additional information that is not relevant for other modes of transportation.
 */
export interface DirectionsTransitDetails {
  /** The arrival transit stop. */
  arrival_stop?: DirectionsTransitStop;
  arrival_time?: TimeZoneTextValueObject;
  /** The departure transit stop. */
  departure_stop?: DirectionsTransitStop;
  departure_time?: TimeZoneTextValueObject;
  /** Specifies the direction in which to travel on this line, as it is marked on the vehicle or at the departure stop. This will often be the terminus station. */
  headsign?: string;
  /** Specifies the expected number of seconds between departures from the same stop at this time. For example, with a `headway` value of 600, you would expect a ten minute wait if you should miss your bus. */
  headway?: number;
  /** Contains information about the transit line used in this step. */
  line?: DirectionsTransitLine;
  /** The number of stops from the departure to the arrival stop. This includes the arrival stop, but not the departure stop. For example, if your directions involve leaving from Stop A, passing through stops B and C, and arriving at stop D, `num_stops` will return 3. */
  num_stops?: number;
  /** The text that appears in schedules and sign boards to identify a transit trip to passengers. The text should uniquely identify a trip within a service day. For example, "538" is the `trip_short_name` of the Amtrak train that leaves San Jose, CA at 15:10 on weekdays to Sacramento, CA. */
  trip_short_name?: string;
}
