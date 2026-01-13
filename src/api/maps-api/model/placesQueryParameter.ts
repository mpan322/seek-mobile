/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The text string on which to search, for example: "restaurant" or "123 Main Street". This must a place name, address, or category of establishments. Any other types
of input can generate errors and are not guaranteed to return valid results. The Google Places service will return candidate matches based on this string and order
the results based on their perceived relevance.

 */
export type PlacesQueryParameter = string;
