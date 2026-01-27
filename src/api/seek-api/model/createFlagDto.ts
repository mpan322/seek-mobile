/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { CreateFlagDtoCategory } from './createFlagDtoCategory';

export interface CreateFlagDto {
  text: string;
  category: CreateFlagDtoCategory;
  reportedUser: string;
}
