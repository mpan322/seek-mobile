import { Card } from "@/components/ui/card";
import { HStack } from "@/components/ui/hstack";
import { FlatList, Pressable } from "react-native";
import { Text } from "@/components/ui/text";
import { Box } from "@/components/ui/box";
import { useRouter } from "expo-router";
import { textStyle } from "@/components/ui/text/styles";
import { VariantProps } from "@gluestack-ui/utils/nativewind-utils";
import { SafeAreaView } from "react-native-safe-area-context";
import { BackButton } from "@/components/custom/back-button";

type Flag = {
  _id: string;
  status: string;
  date: string;
  description: string;
};

type FlagStatusProps = {
  status: string;
  size?: VariantProps<typeof textStyle>["size"];
};

export function FlagStatusPill({ status, size }: FlagStatusProps) {
  if (status === "RESOLVED") {
    return (
      <Box className="bg-green-500/20 text-white rounded-full px-4 py-1 self-center">
        <Text
          size={size}
          bold
          className="text-green-800 text-center self-center"
        >
          Resolved
        </Text>
      </Box>
    );
  }

  if (status === "UNDER_REVIEW") {
    return (
      <Box className="bg-blue-500/20 text-white rounded-full px-4 py-1 self-center">
        <Text
          size={size}
          bold
          className="text-blue-700 text-center self-center"
        >
          Under Review
        </Text>
      </Box>
    );
  }

  if (status === "NO_ACTION_TAKEN") {
    return (
      <Box className="bg-red-500/20 text-white rounded-full px-4 py-1 self-center">
        <Text
          size={size}
          bold
          className="text-error-600 text-center self-center"
        >
          No Action Taken
        </Text>
      </Box>
    );
  }

  return (
    <Box className="bg-red-gray/50 text-white rounded-full px-4 py-1 self-center">
      <Text size={size} bold className="text-center self-center">
        Unknwon
      </Text>
    </Box>
  );
}

type FlagCardProps = {
  id: string;
  status: string;
  date: string;
  description: string;
};

function FlagCard({ id, status, date, description }: FlagCardProps) {
  const router = useRouter();
  const gotoDetails = () => {
    router.navigate(`/(app)/settings/${id}/flag-details`);
  };

  return (
    <Pressable onPress={() => gotoDetails()}>
      <Card className="border-[1px] border-background-400 rounded-xl gap-4">
        <HStack className="justify-between">
          <FlagStatusPill status={status} />
          <Text numberOfLines={2} className="color-secondary-800">
            {date}
          </Text>
        </HStack>
        <Text>{description}</Text>
      </Card>
    </Pressable>
  );
}

export default function PreviousFlagsScreen() {
  const data: Array<Flag> = [
    {
      _id: "1",
      status: "RESOLVED",
      date: "2023-01-01",
      description: "This is a description",
    },
    {
      _id: "2",
      status: "UNDER_REVIEW",
      date: "2023-01-02",
      description: "This is a description",
    },
    {
      _id: "3",
      status: "NO_ACTION_TAKEN",
      date: "2023-03-01",
      description: "This is a description",
    },
  ];

  return (
    <SafeAreaView className="p-6 gap-3">
      <BackButton />
      <FlatList
        contentContainerClassName="gap-6 bg-background-0 h-full"
        data={data}
        renderItem={({ item }) => (
          <FlagCard
            key={item._id}
            id={item._id}
            status={item.status}
            date={item.date}
            description={item.description}
          />
        )}
      />
    </SafeAreaView>
  );
}
