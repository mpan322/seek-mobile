/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * 
Specify `reviews_no_translations=true` to disable translation of reviews; specify `reviews_no_translations=false` to enable translation of reviews. Reviews are returned in their original language.

If omitted, or passed with no value, translation of reviews is enabled. If the `language` parameter was specified in the request, use the specified language as the preferred language for translation. If `language` is omitted, the API attempts to use the `Accept-Language` header as the preferred language.

 */
export type PlacesReviewnotranslationParameter = boolean;
