/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type UserDtoRole = typeof UserDtoRole[keyof typeof UserDtoRole];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const UserDtoRole = {
  SUPERUSER: 'SUPERUSER',
  STUDENT: 'STUDENT',
  LANDLORD_AGENCY: 'LANDLORD_AGENCY',
} as const;
