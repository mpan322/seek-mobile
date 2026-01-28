/**
 * import { AxiosError, AxiosResponse } from 'axios';
 */
import type { CreateListingDtoPropertyType } from './createListingDtoPropertyType';
import type { CreateListingDtoFurnishingStatus } from './createListingDtoFurnishingStatus';
import type { CreateListingDtoEpcRating } from './createListingDtoEpcRating';
import type { Step4ItemDto } from './step4ItemDto';

export interface CreateListingDto {
  propertyTitle: string;
  numOfPeople: number;
  sizeSqMeters: number;
  propertyType: CreateListingDtoPropertyType;
  streetAddress: string;
  cityTown: string;
  postcodeZIP: string;
  country: string;
  bedroomsCount: number;
  enSuiteBedroomCount: number;
  bathrooms: number;
  propertyDesc: string;
  monthlyRent: number;
  securityDeposit: number;
  availableFrom: string;
  availableUntil: string;
  registerOfTitleKey: string;
  registrationNumber: string;
  furnishingStatus: CreateListingDtoFurnishingStatus;
  epcRating: CreateListingDtoEpcRating;
  photos: string[];
  videoTourLink: string;
  floorPlanImage: string;
  amenities: string[];
  requirements: Step4ItemDto[];
}
