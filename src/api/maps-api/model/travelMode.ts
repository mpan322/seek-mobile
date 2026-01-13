/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * - `DRIVING` (default) indicates calculation using the road network.
- `BICYCLING` requests calculation for bicycling via bicycle paths & preferred streets (where available).
- `TRANSIT` requests calculation via public transit routes (where available). 
- `WALKING` requests calculation for walking via pedestrian paths & sidewalks (where available).

 */
export type TravelMode = typeof TravelMode[keyof typeof TravelMode];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const TravelMode = {
  DRIVING: 'DRIVING',
  BICYCLING: 'BICYCLING',
  TRANSIT: 'TRANSIT',
  WALKING: 'WALKING',
} as const;
