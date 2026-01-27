/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type CreateFlagDtoCategory = typeof CreateFlagDtoCategory[keyof typeof CreateFlagDtoCategory];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const CreateFlagDtoCategory = {
  INNAPPROPRIATE_BEHAVIOUR: 'INNAPPROPRIATE_BEHAVIOUR',
  OTHER: 'OTHER',
} as const;
