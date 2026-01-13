/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * The total fare for the route.

```
{
  "currency" : "USD",
  "value" : 6,
  "text" : "$6.00"
}
```

 */
export interface Fare {
  /** An [ISO 4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) indicating the currency that the amount is expressed in. */
  currency: string;
  /** The total fare amount, in the currency specified. */
  value: number;
  /** The total fare amount, formatted in the requested language. */
  text: string;
}
