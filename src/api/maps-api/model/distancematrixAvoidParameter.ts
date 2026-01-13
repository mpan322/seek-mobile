/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Distances may be calculated that adhere to certain restrictions. Restrictions are indicated by use of the avoid parameter, and an argument to that parameter indicating the restriction to avoid. The following restrictions are supported:

* `tolls` indicates that the calculated route should avoid toll roads/bridges.
* `highways` indicates that the calculated route should avoid highways.
* `ferries` indicates that the calculated route should avoid ferries.
* `indoor` indicates that the calculated route should avoid indoor steps for walking and transit directions.

<div class="note">Note: The addition of restrictions does not preclude routes that include the restricted feature; it biases the result to more favorable routes.</div>

 */
export type DistancematrixAvoidParameter = string;
