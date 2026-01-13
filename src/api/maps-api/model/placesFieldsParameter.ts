/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * 
<div class="caution"> Caution: Place Search requests and Place Details requests do not return the same fields. Place Search requests return a subset of the fields that are returned by Place Details requests. If the field you want is not returned by Place Search, you can use Place Search to get a <code>place_id</code>, then use that Place ID to make a Place Details request. For more information on the fields that are unavailable in a Place Search request, see <a href="https://developers.google.com/maps/documentation/places/web-service/place-data-fields#places-api-fields-support">Places API fields support</a>.</div>

Use the fields parameter to specify a comma-separated list of place data types to return. For example: `fields=formatted_address,name,geometry`. Use a forward slash when specifying compound values. For example: `opening_hours/open_now`.

Fields are divided into three billing categories: Basic, Contact, and Atmosphere. Basic fields are billed at base rate, and incur no additional charges. Contact and Atmosphere fields are billed at a higher rate. See the [pricing sheet](https://cloud.google.com/maps-platform/pricing/sheet/) for more information. Attributions, `html_attributions`, are always returned with every call, regardless of whether the field has been requested.

**Basic**

The Basic category includes the following fields: `address_component`, `adr_address`, `business_status`, `formatted_address`, `geometry`, `icon`, `icon_mask_base_uri`, `icon_background_color`, `name`, `permanently_closed` ([deprecated](https://developers.google.com/maps/deprecations)), `photo`, `place_id`, `plus_code`, `type`, `url`, `utc_offset`, `vicinity`, `wheelchair_accessible_entrance`.

**Contact**

The Contact category includes the following fields: `current_opening_hours`, `formatted_phone_number`, `international_phone_number`, `opening_hours`, `secondary_opening_hours`, `website`

**Atmosphere**

The Atmosphere category includes the following fields: `curbside_pickup`, `delivery`, `dine_in`, `editorial_summary`, `price_level`, `rating`, `reservable`, `reviews`, `serves_beer`, `serves_breakfast`, `serves_brunch`, `serves_dinner`, `serves_lunch`, `serves_vegetarian_food`, `serves_wine`, `takeout`, `user_ratings_total`.

 */
export type PlacesFieldsParameter = string[];
