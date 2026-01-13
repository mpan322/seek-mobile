/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { GeocodeLocationTypeParameterItem } from './geocodeLocationTypeParameterItem';

/**
 * A filter of one or more location types, separated by a pipe (`|`). If the parameter contains multiple location types, the API returns all addresses that match any of the types. A note about processing: The `location_type` parameter does not restrict the search to the specified location type(s). Rather, the `location_type` acts as a post-search filter: the API fetches all results for the specified latlng, then discards those results that do not match the specified location type(s). The following values are supported:
* `APPROXIMATE` returns only the addresses that are characterized as approximate.
* `GEOMETRIC_CENTER` returns only geometric centers of a location such as a polyline (for example, a street) or polygon (region).
* `RANGE_INTERPOLATED` returns only the addresses that reflect an approximation (usually on a road) interpolated between two precise points (such as intersections). An interpolated range generally indicates that rooftop geocodes are unavailable for a street address.
* `ROOFTOP` returns only the addresses for which Google has location information accurate down to street address precision.
 */
export type GeocodeLocationTypeParameter = GeocodeLocationTypeParameterItem[];
