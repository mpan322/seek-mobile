/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type AddDocumentDtoDocumentType = typeof AddDocumentDtoDocumentType[keyof typeof AddDocumentDtoDocumentType];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const AddDocumentDtoDocumentType = {
  IDENTIFICATION: 'IDENTIFICATION',
  PROOF_OF_INCOME: 'PROOF_OF_INCOME',
  GUARANTOR_AGREEMENT: 'GUARANTOR_AGREEMENT',
  LANDLORD_REFERENCE: 'LANDLORD_REFERENCE',
  CHARACTER_REFERENCE: 'CHARACTER_REFERENCE',
} as const;
