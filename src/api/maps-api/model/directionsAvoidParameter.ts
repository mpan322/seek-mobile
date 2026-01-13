/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Indicates that the calculated route(s) should avoid the indicated features. This parameter supports the following arguments:
* `tolls` indicates that the calculated route should avoid toll roads/bridges.
* `highways` indicates that the calculated route should avoid highways.
* `ferries` indicates that the calculated route should avoid ferries.
* `indoor` indicates that the calculated route should avoid indoor steps for walking and transit directions.

It's possible to request a route that avoids any combination of tolls, highways and ferries by passing multiple restrictions to the avoid parameter. For example: 

```
avoid=tolls|highways|ferries.
```

 */
export type DirectionsAvoidParameter = string;
