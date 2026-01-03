import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { FlatList } from "react-native";
import { Divider } from "@/components/ui/divider";
import { HStack } from "@/components/ui/hstack";
import { VStack } from "@/components/ui/vstack";
import { Box } from "@/components/ui/box";
import { Icon } from "@/components/ui/icon/index";
import { Users2Icon, ArrowRightIcon } from "lucide-react-native";
import Swipeable from "react-native-gesture-handler/ReanimatedSwipeable";
import { Pressable } from "@/components/ui/pressable";
import { useRouter } from "expo-router";

function MessageItem() {
  function LeaveButton() {
    return (
      <Box className="bg-red-600 p-2 items-center">
        <Icon as={ArrowRightIcon} color="white" fill="white" size="xl" />
        <Text>Leave</Text>
      </Box>
    );
  }

  const router = useRouter();

  return (
    <Swipeable friction={2} renderRightActions={() => <LeaveButton />}>
      <Pressable onPress={() => router.push("/(app)/test")}>
        <HStack className="p-4 gap-6">
          <Box className="bg-background-400 w-10 h-10 rounded-full items-center justify-center text-center">
            <Icon as={Users2Icon} color="black" fill="black" size="xl" />
          </Box>
          <Box className=" bg-primary-100" />
          <VStack className="flex-1">
            <Text bold>Group Chat Name</Text>
            <Text className="text-background-300" size="sm">
              I like this!
            </Text>
          </VStack>
          <Box>
            <Text size="sm" className="text-background-300">
              10:00 AM
            </Text>
          </Box>
        </HStack>
      </Pressable>
    </Swipeable>
  );
}

export default function MessagesScreen() {
  return (
    <SafeAreaView className="h-full bg-background-0">
      <FlatList
        className="px-6"
        ListHeaderComponent={
          <Text bold size="2xl" className="text-center pb-4">
            Messages
          </Text>
        }
        data={["ahaha", "a"]}
        ItemSeparatorComponent={() => <Divider />}
        renderItem={() => <MessageItem />}
      />
    </SafeAreaView>
  );
}
