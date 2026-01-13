/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

export type TrafficModelParameter = typeof TrafficModelParameter[keyof typeof TrafficModelParameter];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const TrafficModelParameter = {
  best_guess: 'best_guess',
  pessimistic: 'pessimistic',
  optimistic: 'optimistic',
} as const;
