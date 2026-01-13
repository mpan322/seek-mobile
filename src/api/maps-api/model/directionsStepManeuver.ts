/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */

/**
 * Contains the action to take for the current step (turn left, merge, straight, etc.). Values are subject to change, and new values may be introduced without prior notice.
 */
export type DirectionsStepManeuver = typeof DirectionsStepManeuver[keyof typeof DirectionsStepManeuver];


// eslint-disable-next-line @typescript-eslint/no-redeclare
export const DirectionsStepManeuver = {
  'turn-slight-left': 'turn-slight-left',
  'turn-sharp-left': 'turn-sharp-left',
  'turn-left': 'turn-left',
  'turn-slight-right': 'turn-slight-right',
  'turn-sharp-right': 'turn-sharp-right',
  'keep-right': 'keep-right',
  'keep-left': 'keep-left',
  'uturn-left': 'uturn-left',
  'uturn-right': 'uturn-right',
  'turn-right': 'turn-right',
  straight: 'straight',
  'ramp-left': 'ramp-left',
  'ramp-right': 'ramp-right',
  merge: 'merge',
  'fork-left': 'fork-left',
  'fork-right': 'fork-right',
  ferry: 'ferry',
  'ferry-train': 'ferry-train',
  'roundabout-left': 'roundabout-left',
  'roundabout-right': 'roundabout-right',
} as const;
