/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type MessageDtoMessageType = typeof MessageDtoMessageType[keyof typeof MessageDtoMessageType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const MessageDtoMessageType = {
  Text: 'Text',
  Image: 'Image',
} as const;
