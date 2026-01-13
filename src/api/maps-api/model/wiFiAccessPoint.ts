/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Attributes used to describe a WiFi access point.
 */
export interface WiFiAccessPoint {
  /** The MAC address of the WiFi node. It's typically called a BSS, BSSID or MAC address. Separators must be `:` (colon). */
  macAddress: string;
  /** The current signal strength measured in dBm. */
  signalStrength?: number;
  /** The current signal to noise ratio measured in dB. */
  signalToNoiseRatio?: number;
  /** The number of milliseconds since this access point was detected. */
  age?: number;
  /** The channel over which the client is communication with the access point. */
  channel?: number;
}
