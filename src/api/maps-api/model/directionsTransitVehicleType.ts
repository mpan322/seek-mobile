/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The type of vehicle used.

* `BUS` -	Bus.
* `CABLE_CAR` -	A vehicle that operates on a cable, usually on the ground. Aerial cable cars may be of the type GONDOLA_LIFT.
* `COMMUTER_TRAIN` -	Commuter rail.
* `FERRY` -	Ferry.
* `FUNICULAR` -	A vehicle that is pulled up a steep incline by a cable. A Funicular typically consists of two cars, with each car acting as a counterweight for the other.
* `GONDOLA_LIFT` -	An aerial cable car.
* `HEAVY_RAIL` -	Heavy rail.
* `HIGH_SPEED_TRAIN` -	High speed train.
* `INTERCITY_BUS` -	Intercity bus.
* `LONG_DISTANCE_TRAIN` -	Long distance train.
* `METRO_RAIL` -	Light rail transit.
* `MONORAIL` -	Monorail.
* `OTHER` -	All other vehicles will return this type.
* `RAIL` -	Rail.
* `SHARE_TAXI` -	Share taxi is a kind of bus with the ability to drop off and pick up passengers anywhere on its route.
* `SUBWAY` -	Underground light rail.
* `TRAM` -	Above ground light rail.
* `TROLLEYBUS` -	Trolleybus.

 */
export type DirectionsTransitVehicleType = typeof DirectionsTransitVehicleType[keyof typeof DirectionsTransitVehicleType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DirectionsTransitVehicleType = {
  BUS: 'BUS',
  CABLE_CAR: 'CABLE_CAR',
  COMMUTER_TRAIN: 'COMMUTER_TRAIN',
  FERRY: 'FERRY',
  FUNICULAR: 'FUNICULAR',
  GONDOLA_LIFT: 'GONDOLA_LIFT',
  HEAVY_RAIL: 'HEAVY_RAIL',
  HIGH_SPEED_TRAIN: 'HIGH_SPEED_TRAIN',
  INTERCITY_BUS: 'INTERCITY_BUS',
  LONG_DISTANCE_TRAIN: 'LONG_DISTANCE_TRAIN',
  METRO_RAIL: 'METRO_RAIL',
  MONORAIL: 'MONORAIL',
  OTHER: 'OTHER',
  RAIL: 'RAIL',
  SHARE_TAXI: 'SHARE_TAXI',
  SUBWAY: 'SUBWAY',
  TRAM: 'TRAM',
  TROLLEYBUS: 'TROLLEYBUS',
} as const;
