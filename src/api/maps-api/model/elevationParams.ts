/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ElevationLocationsParameter } from './elevationLocationsParameter';
import type { ElevationPathParameter } from './elevationPathParameter';
import type { ElevationSamplesParameter } from './elevationSamplesParameter';

export type ElevationParams = {
/**
 * An array of comma separated {latitude,longitude} strings.
 */
locations?: ElevationLocationsParameter;
/**
 * An array of comma separated {latitude,longitude} strings.
 */
path?: ElevationPathParameter;
/**
 * Required if path parameter is set.
 */
samples?: ElevationSamplesParameter;
};
