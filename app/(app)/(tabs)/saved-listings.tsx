import { Text } from "@/components/ui/text";
import { Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import {
  Accordion,
  AccordionContent,
  AccordionHeader,
  AccordionIcon,
  AccordionItem,
  AccordionTitleText,
  AccordionTrigger,
} from "@/components/ui/accordion";
import {
  ChevronDownIcon,
  ChevronUpIcon,
  CloseCircleIcon,
  ExternalLinkIcon,
  FavouriteIcon,
} from "@/components/ui/icon";
import { Card } from "@/components/ui/card";
import { HStack } from "@/components/ui/hstack";
import { Image } from "@/components/ui/image";
import { VStack } from "@/components/ui/vstack";
import { Icon } from "@/components/ui/icon/index.web";
import { Listing } from "@/src/api/model";

type TriggerProps = {
  isExpanded: boolean;
};

export default function SavedListings() {
  return (
    <SafeAreaView className="p-8 bg-background-0 h-full">
      <ScrollView>
        <Accordion type="single">
          <AccordionItem value="liked">
            <AccordionHeader>
              <AccordionTrigger className="border-b-2 border-white">
                {({ isExpanded }: TriggerProps) => (
                  <CustomTriggerInner isExpanded={isExpanded} title="Liked" />
                )}
              </AccordionTrigger>
            </AccordionHeader>
            <AccordionContent className="pt-4 gap-4">
              <Text>Content</Text>
            </AccordionContent>
          </AccordionItem>
          <AccordionItem value="applications">
            <AccordionTrigger className="border-b-2 border-white">
              {({ isExpanded }: TriggerProps) => (
                <CustomTriggerInner
                  isExpanded={isExpanded}
                  title="Applications"
                />
              )}
            </AccordionTrigger>
            <AccordionContent className="pt-4 gap-4">
              <LikedListingCard
                data={{
                  _id: "",
                  landlord: "",
                  propertyTitle: "",
                  numOfPeople: 0,
                  sizeSqMeters: 0,
                  propertyType: "FLAT_APARTMENT",
                  bedroomsCount: 0,
                  enSuiteBedroomCount: 0,
                  bathrooms: 0,
                  registerOfTitleKey: "",
                  propertyDesc: "",
                  amenities: [],
                  streetAddress: "",
                  cityTown: "",
                  postcodeZIP: "",
                  country: "",
                  monthlyRent: 0,
                  securityDeposit: 0,
                  availableFrom: "",
                  availableUntil: "",
                  furnishingStatus: "furnished",
                  epcRating: "A",
                  photos: [],
                  videoTourLink: "",
                  floorPlanImage: "",
                  requirements: [],
                  isVerified: false,
                  isDraft: false,
                  lastUpdated: "",
                }}
              />
            </AccordionContent>
          </AccordionItem>
        </Accordion>
      </ScrollView>
    </SafeAreaView>
  );
}

type CustomTriggerInnerProps = {
  isExpanded: boolean;
  title: string;
};

function CustomTriggerInner({ isExpanded, title }: CustomTriggerInnerProps) {
  console.log(isExpanded);
  return (
    <>
      <AccordionTitleText className="text-2xl font-normal">
        {title}
      </AccordionTitleText>
      {isExpanded ? (
        <AccordionIcon as={ChevronUpIcon} />
      ) : (
        <AccordionIcon as={ChevronDownIcon} />
      )}
    </>
  );
}

type LikedListingCardProps = {
  data: Listing;
};

function LikedListingCard({ data }: LikedListingCardProps) {
  return (
    <ListingCard
      data={data}
      left={
        <HStack className="gap-3">
          <Pressable onPress={() => console.log("clicked!")}>
            <Icon size="xl" as={FavouriteIcon} />
          </Pressable>
          <Pressable onPress={() => console.log("clicked!")}>
            <Icon size="xl" as={ExternalLinkIcon} />
          </Pressable>
        </HStack>
      }
    />
  );
}

type AppliedListindCardProps = {
  data: Listing;
};

function AppliedListingCard({ data }: AppliedListindCardProps) {
  return (
    <ListingCard
      data={data}
      left={
        <HStack className="gap-3">
          <Pressable onPress={() => console.log("clicked!")}>
            <Icon size="xl" as={CloseCircleIcon} />
          </Pressable>
          <Pressable onPress={() => console.log("clicked!")}>
            <Icon size="xl" as={ExternalLinkIcon} />
          </Pressable>
        </HStack>
      }
    />
  );
}

type ListingCardProps = {
  data: Listing;
  left: React.ReactNode;
};

function ListingCard({ data, left }: ListingCardProps) {
  return (
    <Card className="border-[1px] border-white rounded-xl p-3">
      <HStack className="justify-between">
        <HStack className="gap-4">
          <Image
            className="rounded-xl"
            alt="listing image"
            source={{
              uri: "https://picsum.photos/200",
            }}
          />
          <VStack className="gap-1">
            <Text className="text-lg font-bold text-white">Listing Name</Text>
            <Text className="text-sm">Listing Location</Text>
            <Text className="text-sm">Listing Price</Text>
          </VStack>
        </HStack>
        {left}
      </HStack>
    </Card>
  );
}
