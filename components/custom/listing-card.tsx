import { Listing } from "@/src/api/seek-api/model";
import { Card } from "@/components/ui/card";
import { HStack } from "@/components/ui/hstack";
import { Image } from "@/components/ui/image";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { FlatList, LayoutChangeEvent, Pressable, Share } from "react-native";
import { Box } from "../ui/box";
import { HeartIcon, ShareIcon } from "lucide-react-native";
import { useMemo, useState } from "react";
import { ScrollDots } from "./scroll-dots";
import { useRouter } from "expo-router";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { useLike, useUnlike } from "@/hooks/like";
import { useToast } from "../ui/toast";
import { ErrorToast } from "./error-toast";
import { LikeButton } from "./like-button";
import { getListingLink } from "../links";

function handleShare(listing: Listing) {
  const id = listing._id;
  Share.share({
    message: `Check out this listing on Seek!`,
    url: getListingLink(id),
  });
}

export type ListingCardProps = {
  data: Listing;
  left: React.ReactNode;
};

export function ListingCard({ data, left }: ListingCardProps) {
  const router = useRouter();

  return (
    <Card className="border-[1px] border-white rounded-xl p-3">
      <Pressable
        onPress={() => router.navigate(`/(app)/location/${data._id}/details`)}
      >
        <HStack className="justify-between w-full">
          <HStack className="gap-4 flex-1">
            <Image
              className="rounded-xl"
              alt="listing image"
              source={{
                uri: data.photos.at(0) ?? "https://picsum.photos/200",
              }}
            />
            <VStack className="gap-1 flex-1">
              <Text className="text-lg font-bold text-white overflow-ellipsis line-clamp-1">
                {data.propertyTitle}
              </Text>
              <Text className="text-sm">{data.streetAddress}</Text>
              <Text className="text-sm">£{data.monthlyRent}</Text>
            </VStack>
          </HStack>
          <Box>
            {left}
          </Box>
        </HStack>
      </Pressable>
    </Card>
  );
}

export type VerticalListingCardProps = {
  data: Listing;
  onPress?: () => void;
};

export function VerticalListingCard({
  data,
  onPress,
}: VerticalListingCardProps) {
  const { data: user } = useAuthControllerCurrentUser();
  const { mutate: like } = useLike();
  const { mutate: unlike } = useUnlike();
  const toast = useToast();
  const liked = useMemo(() => (user && data.likedBy.includes(user._id)) ?? false, [data, user])

  async function handleUnlike() {
    console.log("UNLIKE TRIGGERED")
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
    console.log("LIKE TRIGGERED")
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


  const [imageIndex, setImageIndex] = useState<number>(0);
  const [parentWidth, setParentWidth] = useState<number>(0);
  const onLayout = (e: LayoutChangeEvent) => {
    setParentWidth(e.nativeEvent.layout.width);
  };

  return (
    <Card className="bg-transparent">
      <VStack className="justify-between">
        <Pressable
          onPress={onPress}
          onLayout={onLayout}
          className="rounded-xl overflow-hidden"
        >
          <FlatList
            horizontal
            showsHorizontalScrollIndicator={false}
            pagingEnabled
            disableIntervalMomentum
            snapToAlignment="start"
            viewabilityConfig={{
              viewAreaCoveragePercentThreshold: 51,
            }}
            onViewableItemsChanged={({ viewableItems }) => {
              if (viewableItems.length === 0) {
                return;
              }
              setImageIndex(viewableItems[0].index ?? 0);
            }}
            data={data.photos}
            decelerationRate={0.9}
            keyExtractor={(item) => item}
            renderItem={({ item }) => (
              <Box
                style={{
                  width: parentWidth,
                }}
              >
                <Image
                  className="w-full h-[200px]"
                  alt="listing image"
                  source={{
                    uri: item,
                  }}
                />
              </Box>
            )}
          />
          <Box className="absolute w-full bottom-2">
            <ScrollDots total={data.photos.length} value={imageIndex} />
          </Box>
        </Pressable>
        <HStack className="p-3">
          <VStack className="flex-1">
            <Text className="text-lg font-bold text-white">
              {data.propertyTitle}
            </Text>
            <Text className="text-sm">{data.streetAddress}</Text>
            <Text className="text-sm">£{data.monthlyRent}</Text>
          </VStack>
          <HStack className="gap-3">
            <LikeButton unlike={handleLike}
              size={24}
              like={handleUnlike}
              liked={liked} />
            <ShareIcon
              onPress={() => handleShare(data)}
              color="white"
              size={24}
            />
          </HStack>
        </HStack>
      </VStack>
    </Card>
  );
}
