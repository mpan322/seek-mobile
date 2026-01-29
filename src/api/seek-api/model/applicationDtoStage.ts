/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type ApplicationDtoStage = typeof ApplicationDtoStage[keyof typeof ApplicationDtoStage];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const ApplicationDtoStage = {
  SENT: 'SENT',
  NOT_SENT: 'NOT_SENT',
  UNDER_REVIEW: 'UNDER_REVIEW',
  ACCEPTED: 'ACCEPTED',
  REJECTED: 'REJECTED',
} as const;
