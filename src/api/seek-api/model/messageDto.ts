/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { MessageDtoMessageType } from './messageDtoMessageType';

export interface MessageDto {
  _id: string;
  sender: string;
  messageType: MessageDtoMessageType;
  data: string;
  createdAt: string;
  conversation: string;
  seenUsers: string[];
  deliveredTo: string[];
}
