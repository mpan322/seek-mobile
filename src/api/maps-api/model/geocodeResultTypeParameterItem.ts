/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type GeocodeResultTypeParameterItem = typeof GeocodeResultTypeParameterItem[keyof typeof GeocodeResultTypeParameterItem];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const GeocodeResultTypeParameterItem = {
  administrative_area_level_1: 'administrative_area_level_1',
  administrative_area_level_2: 'administrative_area_level_2',
  administrative_area_level_3: 'administrative_area_level_3',
  administrative_area_level_4: 'administrative_area_level_4',
  administrative_area_level_5: 'administrative_area_level_5',
  airport: 'airport',
  colloquial_area: 'colloquial_area',
  country: 'country',
  intersection: 'intersection',
  locality: 'locality',
  natural_feature: 'natural_feature',
  neighborhood: 'neighborhood',
  park: 'park',
  plus_code: 'plus_code',
  political: 'political',
  postal_code: 'postal_code',
  premise: 'premise',
  route: 'route',
  street_address: 'street_address',
  sublocality: 'sublocality',
  subpremise: 'subpremise',
} as const;
