/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The sorting method to use when returning reviews. Can be set to `most_relevant` (default) or `newest`.

- For `most_relevant` (default), reviews are sorted by relevance; the service will bias the results to return reviews originally written in the preferred language.
- For `newest`, reviews are sorted in chronological order; the preferred language does not affect the sort order.

Google recommends that you display how the reviews are being sorted to the end user.

 */
export type PlacesReviewsortParameter = string;
