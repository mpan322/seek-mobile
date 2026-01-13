/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Contains a summary of the place. A summary is comprised of a textual overview, and also includes the language code for these if applicable. Summary text must be presented as-is and can not be modified or altered.
 */
export interface PlaceEditorialSummary {
  /** A medium-length textual summary of the place. */
  overview?: string;
  /** The language of the previous fields. May not always be present. */
  language?: string;
}
