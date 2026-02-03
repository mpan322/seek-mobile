/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type DocumentTypesDtoDataItem = typeof DocumentTypesDtoDataItem[keyof typeof DocumentTypesDtoDataItem];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DocumentTypesDtoDataItem = {
  IDENTIFICATION: 'IDENTIFICATION',
  PROOF_OF_INCOME: 'PROOF_OF_INCOME',
  GUARANTOR_AGREEMENT: 'GUARANTOR_AGREEMENT',
  LANDLORD_REFERENCE: 'LANDLORD_REFERENCE',
  CHARACTER_REFERENCE: 'CHARACTER_REFERENCE',
} as const;
