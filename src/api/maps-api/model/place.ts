/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { AddressComponent } from './addressComponent';
import type { PlaceBusinessStatus } from './placeBusinessStatus';
import type { PlaceOpeningHours } from './placeOpeningHours';
import type { PlaceEditorialSummary } from './placeEditorialSummary';
import type { Geometry } from './geometry';
import type { PlacePhoto } from './placePhoto';
import type { PlusCode } from './plusCode';
import type { PlaceReview } from './placeReview';

/**
 * Attributes describing a place. Not all attributes will be available for all place types.
 */
export interface Place {
  /** An array containing the separate components applicable to this address. */
  address_components?: AddressComponent[];
  /** A representation of the place's address in the [adr microformat](http://microformats.org/wiki/adr). */
  adr_address?: string;
  /** Indicates the operational status of the place, if it is a business. If no data exists, `business_status` is not returned.
 */
  business_status?: PlaceBusinessStatus;
  /** Specifies if the business supports curbside pickup. */
  curbside_pickup?: boolean;
  /** Contains the hours of operation for the next seven days (including today). The time period starts at midnight on the date of the request and ends at 11:59 pm six days later. This field includes the `special_days` subfield of all hours, set for dates that have exceptional hours. */
  current_opening_hours?: PlaceOpeningHours;
  /** Specifies if the business supports delivery. */
  delivery?: boolean;
  /** Specifies if the business supports indoor or outdoor seating options. */
  dine_in?: boolean;
  /** Contains a summary of the place. A summary is comprised of a textual overview, and also includes the language code for these if applicable. Summary text must be presented as-is and can not be modified or altered. */
  editorial_summary?: PlaceEditorialSummary;
  /** A string containing the human-readable address of this place.

Often this address is equivalent to the postal address. Note that some countries, such as the United Kingdom, do not allow distribution of true postal addresses due to licensing restrictions.

The formatted address is logically composed of one or more address components. For example, the address "111 8th Avenue, New York, NY" consists of the following components: "111" (the street number), "8th Avenue" (the route), "New York" (the city) and "NY" (the US state).

Do not parse the formatted address programmatically. Instead you should use the individual address components, which the API response includes in addition to the formatted address field.
 */
  formatted_address?: string;
  /** Contains the place's phone number in its [local format](http://en.wikipedia.org/wiki/Local_conventions_for_writing_telephone_numbers). */
  formatted_phone_number?: string;
  /** Contains the location and viewport for the location. */
  geometry?: Geometry;
  /** Contains the URL of a suggested icon which may be displayed to the user when indicating this result on a map. */
  icon?: string;
  /** Contains the default HEX color code for the place's category. */
  icon_background_color?: string;
  /** Contains the URL of a recommended icon, minus the `.svg` or `.png` file type extension. */
  icon_mask_base_uri?: string;
  /** Contains the place's phone number in international format. International format includes the country code, and is prefixed with the plus, +, sign. For example, the international_phone_number for Google's Sydney, Australia office is `+61 2 9374 4000`. */
  international_phone_number?: string;
  /** Contains the human-readable name for the returned result. For `establishment` results, this is usually the canonicalized business name. */
  name?: string;
  /** Contains the regular hours of operation. */
  opening_hours?: PlaceOpeningHours;
  /**
   * Use `business_status` to get the operational status of businesses.
   * @deprecated
   */
  permanently_closed?: boolean;
  /** An array of photo objects, each containing a reference to an image. A request may return up to ten photos. More information about place photos and how you can use the images in your application can be found in the [Place Photos](https://developers.google.com/maps/documentation/places/web-service/photos) documentation. */
  photos?: PlacePhoto[];
  /** A textual identifier that uniquely identifies a place. To retrieve information about the place, pass this identifier in the `place_id` field of a Places API request. For more information about place IDs, see the [place ID overview](https://developers.google.com/maps/documentation/places/web-service/place-id). */
  place_id?: string;
  /** An encoded location reference, derived from latitude and longitude coordinates, that represents an area: 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller. Plus codes can be used as a replacement for street addresses in places where they do not exist (where buildings are not numbered or streets are not named). See [Open Location Code](https://en.wikipedia.org/wiki/Open_Location_Code) and [plus codes](https://plus.codes/).
 */
  plus_code?: PlusCode;
  /** The price level of the place, on a scale of 0 to 4. The exact amount indicated by a specific value will vary from region to region. Price levels are interpreted as follows:
- 0 Free
- 1 Inexpensive
- 2 Moderate
- 3 Expensive
- 4 Very Expensive
 */
  price_level?: number;
  /** Contains the place's rating, from 1.0 to 5.0, based on aggregated user reviews. */
  rating?: number;
  /** @deprecated */
  reference?: string;
  /** Specifies if the place supports reservations. */
  reservable?: boolean;
  /** A JSON array of up to five reviews. By default, the reviews are sorted in order of relevance. Use the `reviews_sort` request parameter to control sorting.

- For `most_relevant` (default), reviews are sorted by relevance; the service will bias the results to return reviews originally written in the preferred language.
- For `newest`, reviews are sorted in chronological order; the preferred language does not affect the sort order.
Google recommends indicating to users whether results are ordered by `most_relevant` or `newest`.
 */
  reviews?: PlaceReview[];
  /** Specifies if the place serves beer. */
  serves_beer?: boolean;
  /** Specifies if the place serves breakfast. */
  serves_breakfast?: boolean;
  /** Specifies if the place serves brunch. */
  serves_brunch?: boolean;
  /** Specifies if the place serves dinner. */
  serves_dinner?: boolean;
  /** Specifies if the place serves lunch. */
  serves_lunch?: boolean;
  /** Specifies if the place serves vegetarian food. */
  serves_vegetarian_food?: boolean;
  /** Specifies if the place serves wine. */
  serves_wine?: boolean;
  /** @deprecated */
  scope?: string;
  /** Contains an array of entries for the next seven days including information about secondary hours of a business. Secondary hours are different from a business's main hours. For example, a restaurant can specify drive through hours or delivery hours as its secondary hours. This field populates the `type` subfield, which draws from a predefined list of opening hours types (such as `DRIVE_THROUGH`, `PICKUP`, or `TAKEOUT`) based on the types of the place. This field includes the `special_days` subfield of all hours, set for dates that have exceptional hours. */
  secondary_opening_hours?: PlaceOpeningHours;
  /** Specifies if the business supports takeout. */
  takeout?: boolean;
  /** Contains an array of feature types describing the given result. See the list of [supported types](https://developers.google.com/maps/documentation/places/web-service/supported_types#table2). */
  types?: string[];
  /** Contains the URL of the official Google page for this place. This will be the Google-owned page that contains the best available information about the place. Applications must link to or embed this page on any screen that shows detailed results about the place to the user. */
  url?: string;
  /** The total number of reviews, with or without text, for this place. */
  user_ratings_total?: number;
  /** Contains the number of minutes this place’s current timezone is offset from UTC. For example, for places in Sydney, Australia during daylight saving time this would be 660 (+11 hours from UTC), and for places in California outside of daylight saving time this would be -480 (-8 hours from UTC). */
  utc_offset?: number;
  /** For establishment (`types:["establishment", ...])` results only, the `vicinity` field contains a simplified address for the place, including the street name, street number, and locality, but not the province/state, postal code, or country.

For all other results, the `vicinity` field contains the name of the narrowest political (`types:["political", ...]`) feature that is present in the address of the result.

This content is meant to be read as-is. Do not programmatically parse the formatted address.
 */
  vicinity?: string;
  /** The authoritative website for this place, such as a business' homepage. */
  website?: string;
  /** Specifies if the place has an entrance that is wheelchair-accessible. */
  wheelchair_accessible_entrance?: boolean;
}
