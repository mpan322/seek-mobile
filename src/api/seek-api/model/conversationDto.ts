/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { MessageDto } from './messageDto';

export interface ConversationDto {
  _id: string;
  name: string;
  lastMessage?: MessageDto;
  createdAt: string;
  groupDescription: string;
  avatar: string;
  users: string[];
  messages: MessageDto[];
}
