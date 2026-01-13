/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The point around which to retrieve place information. This must be specified as `latitude,longitude`. 

<div class="note">The <code>location</code> parameter may be overriden if the <code>query</code> contains an explicit location such as <code>Market in Barcelona</code>. Using quotes around the query may also influence the weight given to the <code>location</code> and <code>radius</code>.</div>

 */
export type PlacesLocationWeightedParameter = string;
