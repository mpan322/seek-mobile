/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { UserDtoRole } from './userDtoRole';

export interface UserDto {
  _id: string;
  name: string;
  email: string;
  role: UserDtoRole;
  profilePicUrl: string;
  isVerified: string;
  lastSeen: string;
}
