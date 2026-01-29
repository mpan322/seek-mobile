/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ObjectId } from './objectId';

export interface Conversation {
  _id: ObjectId;
  name: string;
  createdAt: string;
  groupDescription: string;
  avatar: string;
  createdBy: ObjectId;
  users: string[];
  lastMessage: ObjectId;
}
