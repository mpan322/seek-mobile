/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { ListingPropertyType } from './listingPropertyType';
import type { ListingFurnishingStatus } from './listingFurnishingStatus';
import type { ListingEpcRating } from './listingEpcRating';
import type { ListingLocation } from './listingLocation';

export interface Listing {
  _id: string;
  landlord: string;
  propertyTitle: string;
  numOfPeople: number;
  sizeSqMeters: number;
  propertyType: ListingPropertyType;
  bedroomsCount: number;
  enSuiteBedroomCount: number;
  bathrooms: number;
  registerOfTitleKey: string;
  propertyDesc: string;
  amenities: string[];
  streetAddress: string;
  cityTown: string;
  postcodeZIP: string;
  country: string;
  monthlyRent: number;
  securityDeposit: number;
  availableFrom: string;
  availableUntil: string;
  furnishingStatus: ListingFurnishingStatus;
  epcRating: ListingEpcRating;
  photos: string[];
  videoTourLink: string;
  floorPlanImage: string;
  requirements: string[];
  isVerified: boolean;
  isDraft: boolean;
  lastUpdated: string;
  likedBy: string[];
  location: ListingLocation;
}
