/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The point around which to retrieve place information. This must be specified as `latitude,longitude`. The `radius` parameter must also be provided when specifying a location. If `radius` is not provided, the `location` parameter is ignored.

<div class="note">When using the Text Search API, the `location` parameter may be overriden if the `query` contains an explicit location such as `Market in Barcelona`.</div>

 */
export type PlacesLocationParameter = string;
