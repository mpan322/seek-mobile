/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { SnaptoroadsPathParameter } from './snaptoroadsPathParameter';
import type { SnaptoroadsInterpolateParameter } from './snaptoroadsInterpolateParameter';

export type SnapToRoadsParams = {
/**
 * An array of comma separated {latitude,longitude} strings.
 */
path: SnaptoroadsPathParameter;
/**
 * Whether to interpolate a path to include all points forming the full road-geometry. When true, additional interpolated points will also be returned, resulting in a path that smoothly follows the geometry of the road, even around corners and through tunnels. Interpolated paths will most likely contain more points than the original path. Defaults to `false`.

 */
interpolate?: SnaptoroadsInterpolateParameter;
};
