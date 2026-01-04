/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface ConfirmPasswordResetDto {
  userId: string;
  token: string;
  newPassword: string;
}
