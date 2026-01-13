/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { LanguageParameter } from './languageParameter';
import type { TimezoneLocationParameter } from './timezoneLocationParameter';
import type { TimezoneTimestampParameter } from './timezoneTimestampParameter';

export type TimezoneParams = {
/**
 * The language in which to return results.

* See the [list of supported languages](https://developers.google.com/maps/faq#languagesupport). Google often updates the supported languages, so this list may not be exhaustive.
* If `language` is not supplied, the API attempts to use the preferred language as specified in the `Accept-Language` header.
* The API does its best to provide a street address that is readable for both the user and locals. To achieve that goal, it returns street addresses in the local language, transliterated to a script readable by the user if necessary, observing the preferred language. All other addresses are returned in the preferred language. Address components are all returned in the same language, which is chosen from the first component.
* If a name is not available in the preferred language, the API uses the closest match.
* The preferred language has a small influence on the set of results that the API chooses to return, and the order in which they are returned. The geocoder interprets abbreviations differently depending on language, such as the abbreviations for street types, or synonyms that may be valid in one language but not in another. For example, _utca_ and _tér_ are synonyms for street in Hungarian.
 */
language?: LanguageParameter;
/**
 * A comma-separated latitude,longitude tuple, `location=39.6034810,-119.6822510`, representing the location to look up.

 */
location: TimezoneLocationParameter;
/**
 * The desired time as seconds since midnight, January 1, 1970 UTC. The Time Zone API uses the `timestamp` to determine whether or not Daylight Savings should be applied, based on the time zone of the `location`. 

Note that the API does not take historical time zones into account. That is, if you specify a past timestamp, the API does not take into account the possibility that the location was previously in a different time zone.

 */
timestamp: TimezoneTimestampParameter;
};
