/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { NearestroadsPointsParameter } from './nearestroadsPointsParameter';

export type NearestRoadsParams = {
/**
 * An array of comma separated {latitude,longitude} strings.
 */
points: NearestroadsPointsParameter;
};
