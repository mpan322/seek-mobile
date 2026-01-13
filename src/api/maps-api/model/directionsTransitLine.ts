/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { DirectionsTransitAgency } from './directionsTransitAgency';
import type { DirectionsTransitVehicle } from './directionsTransitVehicle';

export interface DirectionsTransitLine {
  /** The transit agency (or agencies) that operates this transit line. */
  agencies: DirectionsTransitAgency[];
  /** The color commonly used in signage for this line. */
  color?: string;
  /** The full name of this transit line, e.g. "8 Avenue Local". */
  name: string;
  /** The short name of this transit line. This will normally be a line number, such as "M7" or "355". */
  short_name?: string;
  /** The color commonly used in signage for this line. */
  text_color?: string;
  /** Contains the URL for this transit line as provided by the transit agency. */
  url?: string;
  /** Contains the URL for the icon associated with this line. */
  icon?: string;
  /** The type of vehicle that operates on this transit line. */
  vehicle?: DirectionsTransitVehicle;
}
