/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { UserDto } from './userDto';
import type { MessageDtoMessageType } from './messageDtoMessageType';

export interface MessageDto {
  _id: string;
  sender: UserDto;
  messageType: MessageDtoMessageType;
  data: string;
  createdAt: string;
  conversation: string;
  seenUsers: string[];
  deliveredTo: string[];
}
