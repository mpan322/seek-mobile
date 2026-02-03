import { Text } from "@/components/ui/text";
import { FlatList, Share } from "react-native";
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
} from "@/components/ui/icon";
import { HStack } from "@/components/ui/hstack";
import { Listing } from "@/src/api/seek-api/model";
import { ListingCard } from "@/components/custom/listing-card";
import { useListingsControllerGetLiked } from "@/src/api/seek-api/listings";
import { useApplicationControllerGetAllMyApplications } from "@/src/api/seek-api/application";
import { LikeButton } from "@/components/custom/like-button";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { useMemo } from "react";
import { useLike, useUnlike } from "@/hooks/like";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { Box } from "@/components/ui/box";
import { ShareButton } from "@/components/custom/share-button";
import { getListingLink } from "@/components/links";
import { useFocusEffect } from "@react-navigation/native";

type TriggerProps = {
  isExpanded: boolean;
};

export default function SavedListings() {
  const { data: liked } = useListingsControllerGetLiked();
  const { data: applied } = useApplicationControllerGetAllMyApplications();

  return (
    <SafeAreaView className="p-8 bg-background-0 h-full">
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
            <FlatList
              contentContainerClassName="gap-3"
              data={liked?.data ?? []}
              renderItem={({ item }) => (
                <LikedListingCard data={item} />
              )}
              ListEmptyComponent={
                <Box>
                  <Text className="text-secondary-800 text-center text-xl">
                    No liked listings yet
                  </Text>
                </Box>
              }
            />
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
            <FlatList
              data={applied ?? []}
              contentContainerClassName="gap-2"
              keyExtractor={item => item._id}
              renderItem={({ item }) => (
                <AppliedListingCard data={item.listing} />
              )}
              ListEmptyComponent={
                <Box>
                  <Text className="text-secondary-800 text-center text-xl">
                    No applications yet
                  </Text>
                </Box>
              }
            />
          </AccordionContent>
        </AccordionItem>
      </Accordion>
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
  const { data: user } = useAuthControllerCurrentUser();
  const { mutate: like } = useLike();
  const { mutate: unlike } = useUnlike();
  const toast = useToast();
  const liked = useMemo(() => (user && data.likedBy?.includes(user._id)) ?? false, [data, user])

  async function handleUnlike() {
    console.log("UNLIKE PRESSED")
    unlike({ id: data._id }, {
      onError(error) {
        toast.show({
          placement: "top",
          render: (props) => (
            <ErrorToast {...props} error={error.response?.data} />
          )
        })
      }
    });
  }

  async function handleLike() {
    console.log("LIKE PRESSED")
    like({ id: data._id }, {
      onError(error) {
        toast.show({
          render: (props) => (
            <ErrorToast {...props} error={error.response?.data} />
          )
        })
      }
    });
  }

  function handleShare() {
    const id = data._id;
    Share.share({
      message: `Check out this listing on Seek!`,
      url: getListingLink(id),
    });
  }


  return (
    <ListingCard
      data={data}
      left={
        <HStack className="gap-3">
          <LikeButton unlike={handleLike}
            size={20}
            like={handleUnlike}
            liked={liked} />
          <ShareButton size={20} share={handleShare} />
        </HStack>
      }
    />
  );
}

type AppliedListindCardProps = {
  data: Listing;
};

function AppliedListingCard({ data }: AppliedListindCardProps) {
  const { data: user } = useAuthControllerCurrentUser();
  const { mutate: like } = useLike();
  const { mutate: unlike } = useUnlike();
  const toast = useToast();

  useFocusEffect(() => {
    console.log("listing", data)
  })

  const liked = useMemo(() =>
    (user && data.likedBy?.includes(user._id)) ?? false
    , [data, user])

  async function handleUnlike() {
    unlike({ id: data._id }, {
      onError(error) {
        toast.show({
          render: (props) => (
            <ErrorToast {...props} error={error.response?.data} />
          )
        })
      }
    });
  }

  async function handleLike() {
    like({ id: data._id }, {
      onError(error) {
        toast.show({
          render: (props) => (
            <ErrorToast {...props} error={error.response?.data} />
          )
        })
      }
    });
  }

  function handleShare() {
    const id = data._id;
    Share.share({
      message: `Check out this listing on Seek!`,
      url: getListingLink(id),
    });
  }

  return (
    <ListingCard
      data={data}
      left={
        <HStack className="gap-3">
          <LikeButton unlike={handleLike}
            size={20}
            like={handleUnlike}
            liked={liked} />
          <ShareButton size={20} share={handleShare} />
        </HStack>
      }
    />
  );
}

