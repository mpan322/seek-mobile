/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { Listing } from './listing';
import type { ConversationDto } from './conversationDto';
import type { ApplicationDtoStage } from './applicationDtoStage';

export interface ApplicationDto {
  _id: string;
  listing: Listing;
  conversation: ConversationDto;
  landlord: string;
  applicants: string[];
  createdAt: string;
  owner: string;
  stage: ApplicationDtoStage;
}
