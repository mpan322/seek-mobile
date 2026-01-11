/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export interface CreateUserDto {
  name: string;
  email: string;
  role: string;
  imageUrl: string;
  password: string;
  emailVerificationToken: string;
  otpVerificationCode: string;
  emailVerificationTokenExpires: string;
}
