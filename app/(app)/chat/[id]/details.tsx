import { Box } from "@/components/ui/box";
import { Icon } from "@/components/ui/icon";
import { VStack } from "@/components/ui/vstack";
import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { PlusIcon, ArrowLeftIcon } from "lucide-react-native";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Pressable } from "@/components/ui/pressable";

export default function ChatDetails() {
  const { chat } = useLocalSearchParams<{ chat: string }>();
  console.log(`chat=${chat}`);
  const router = useRouter();

  return (
    <SafeAreaView className="p-6">
      <VStack className="h-full gap-2">
        <Box className="flex items-center justify-between flex-row">
          <Pressable onPressIn={() => router.back()}>
            <Icon as={ArrowLeftIcon} size="xl" />
          </Pressable>
          <Text bold size="xl">
            {chat}
          </Text>
          <Icon as={PlusIcon} size="xl" />
        </Box>
      </VStack>
    </SafeAreaView>
  );
}
