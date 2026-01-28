/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { AddDocumentDtoDocumentType } from './addDocumentDtoDocumentType';

export interface AddDocumentDto {
  documentType: AddDocumentDtoDocumentType;
  url: string;
}
