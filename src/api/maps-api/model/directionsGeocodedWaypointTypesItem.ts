/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type DirectionsGeocodedWaypointTypesItem = typeof DirectionsGeocodedWaypointTypesItem[keyof typeof DirectionsGeocodedWaypointTypesItem];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DirectionsGeocodedWaypointTypesItem = {
  administrative_area_level_1: 'administrative_area_level_1',
  administrative_area_level_2: 'administrative_area_level_2',
  administrative_area_level_3: 'administrative_area_level_3',
  administrative_area_level_4: 'administrative_area_level_4',
  administrative_area_level_5: 'administrative_area_level_5',
  amusement_park: 'amusement_park',
  airport: 'airport',
  colloquial_area: 'colloquial_area',
  country: 'country',
  establishment: 'establishment',
  intersection: 'intersection',
  locality: 'locality',
  natural_feature: 'natural_feature',
  neighborhood: 'neighborhood',
  park: 'park',
  plus_code: 'plus_code',
  point_of_interest: 'point_of_interest',
  political: 'political',
  postal_code: 'postal_code',
  premise: 'premise',
  route: 'route',
  street_address: 'street_address',
  sublocality: 'sublocality',
  sublocality_level_1: 'sublocality_level_1',
  subpremise: 'subpremise',
  tourist_attraction: 'tourist_attraction',
  train_station: 'train_station',
  transit_station: 'transit_station',
} as const;
