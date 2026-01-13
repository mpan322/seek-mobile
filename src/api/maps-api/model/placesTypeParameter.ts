/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Restricts the results to places matching the specified type. Only one type may be specified. If more than one type is provided, all types following the first entry are ignored.

* `type=hospital|pharmacy|doctor` becomes `type=hospital`
* `type=hospital,pharmacy,doctor` is ignored entirely

See the list of [supported types](https://developers.google.com/maps/documentation/places/web-service/supported_types).
<div class="note">Note: Adding both `keyword` and `type` with the same value (`keyword=cafe&type=cafe` or `keyword=parking&type=parking`) can yield `ZERO_RESULTS`.</div>

 */
export type PlacesTypeParameter = string;
