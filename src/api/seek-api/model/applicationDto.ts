/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { Listing } from './listing';
import type { Conversation } from './conversation';
import type { ApplicationDtoStage } from './applicationDtoStage';

export interface ApplicationDto {
  _id: string;
  listing: Listing;
  conversation: Conversation;
  landlord: string;
  applicants: string[];
  createdAt: string;
  stage: ApplicationDtoStage;
}
