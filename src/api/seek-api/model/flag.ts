/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { FlagStatus } from './flagStatus';
import type { FlagCategory } from './flagCategory';

export interface Flag {
  _id: string;
  status: FlagStatus;
  category: FlagCategory;
  reportedUser: string;
  createdBy: string;
  text: string;
  resolutionDate?: string;
}
