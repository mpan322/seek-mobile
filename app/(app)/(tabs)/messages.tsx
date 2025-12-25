import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { FlatList, ScrollView, View } from "react-native";
import { Divider } from "@/components/ui/divider";
import { HStack } from "@/components/ui/hstack";
import { VStack } from "@/components/ui/vstack";
import { Box } from "@/components/ui/box";

function MessageItem() {
  return (
    <HStack className="p-4 gap-6">
      <Box className="w-10 h-10 bg-primary-100" />
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
