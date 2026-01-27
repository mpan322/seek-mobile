/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { Listing } from './listing';

export interface LikedListingsDto {
  data: Listing[];
  total: number;
}
