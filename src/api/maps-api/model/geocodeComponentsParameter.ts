/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * A components filter with elements separated by a pipe (|). The components filter is also accepted as an optional parameter if an address is provided. Each element in the components filter consists of a `component:value` pair, and fully restricts the results from the geocoder.

The components that can be filtered include:

* `postal_code` matches `postal_code` and `postal_code_prefix`.
* `country` matches a country name or a two letter ISO 3166-1 country code. The API follows the ISO standard for defining countries, and the filtering works best when using the corresponding ISO code of the country.
  <aside class="note"><strong>Note</strong>: If you receive unexpected results with a country code, verify that you are using a code which includes the countries, dependent territories, and special areas of geographical interest you intend. You can find code information at Wikipedia: List of ISO 3166 country codes or the ISO Online Browsing Platform.</aside>
  
The following components may be used to influence results, but will not be enforced:

* `route` matches the long or short name of a route.
* `locality` matches against `locality` and `sublocality` types.
* `administrative_area` matches all the `administrative_area` levels.
  
Notes about component filtering:

* Do not repeat these component filters in requests, or the API will return `INVALID_REQUEST`: 
  * `country`
  * `postal_code`
  * `route`
* If the request contains repeated component filters, the API evaluates those filters as an AND, not an OR.
* Results are consistent with Google Maps, which occasionally yields unexpected `ZERO_RESULTS` responses. Using Place Autocomplete may provide better results in some use cases. To learn more, see [this FAQ](https://developers..google.com/maps/documentation/geocoding/faq#trbl_component_filtering).
* For each address component, either specify it in the address parameter or in a components filter, but not both. Specifying the same values in both may result in `ZERO_RESULTS`.

<div class="note">Note: At least one of `address` or `components` is required.</div>
 */
export type GeocodeComponentsParameter = string[];
