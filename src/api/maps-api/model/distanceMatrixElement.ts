/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { Fare } from './fare';
import type { TextValueObject } from './textValueObject';
import type { DistanceMatrixElementStatus } from './distanceMatrixElementStatus';

export interface DistanceMatrixElement {
  /** If present, contains the total fare (that is, the total ticket costs) on this route. This property is only returned for transit requests and only for transit providers where fare information is available. */
  fare?: Fare;
  /** The total distance of this route, expressed in meters (value) and as text. The textual value uses the unit system specified with the unit parameter of the original request, or the origin's region. */
  distance?: TextValueObject;
  /** The length of time it takes to travel this route, based on current and historical traffic conditions. See the `traffic_model` request parameter for the options you can use to request that the returned value is optimistic, pessimistic, or a best-guess estimate. The duration is expressed in seconds (the value field) and as text. The textual representation is localized according to the query's language parameter. The duration in traffic is returned only if all of the following are true:

* The request includes a `departure_time` parameter.
* Traffic conditions are available for the requested route.
* The mode parameter is set to driving.
 */
  duration_in_traffic?: TextValueObject;
  /** The length of time it takes to travel this route, expressed in seconds (the value field) and as text. The textual representation is localized according to the query's language parameter. */
  duration?: TextValueObject;
  /** A status for the element. */
  status: DistanceMatrixElementStatus;
}
