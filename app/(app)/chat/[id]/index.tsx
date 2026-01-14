import { Box } from "@/components/ui/box";
import { Icon } from "@/components/ui/icon/index";
import { ArrowUpIcon, InfoIcon, ArrowLeftIcon } from "lucide-react-native";
import {
  SafeAreaView,
  useSafeAreaInsets,
} from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { KeyboardAvoidingView, Platform, ScrollView } from "react-native";
import { Input, InputField, InputIcon, InputSlot } from "@/components/ui/input";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Pressable } from "react-native-gesture-handler";

export default function ChatScreen() {
  const { top, bottom } = useSafeAreaInsets();
  const messages = [
    {
      from: "John",
      message: "Hello, how are you?",
    },
    {
      from: "Jane",
      message:
        "I'm doing great, thanks for asking! jlkadsfj;lasdkfjalsdkjflasjdf;lasd;flkjas;dfkljaskd;ladifjasldfja;skdjf",
    },
    {
      from: "Me",
      message: "No problem, I'm here to help.",
    },
    {
      from: "Jane",
      message: "That's great to hear!",
    },
  ];

  const router = useRouter();
  const { chat } = useLocalSearchParams<{ chat: string }>();

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
          <Pressable onPressIn={() => router.push(`/(app)/${chat}/details`)}>
            <Icon as={InfoIcon} size="xl" />
          </Pressable>
        </Box>

        {/* Messages */}
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerClassName="gap-2"
          decelerationRate="fast"
        >
          {messages.map(({ message, from }) => (
            <Box
              key={message + from}
              className={`flex flex-1 flex-row w-full ${from === "Me" ? "justify-end" : "justify-start"}`}
            >
              <Box className="max-w-[66%]">
                {from !== "Me" && (
                  <Text className="w-fit flex-shrink">{from}</Text>
                )}
                <Box className="bg-background-200 rounded-md p-2">
                  <Text className="w-fit flex-shrink">{message}</Text>
                </Box>
              </Box>
            </Box>
          ))}
        </ScrollView>

        {/* Input */}
        <KeyboardAvoidingView
          behavior={Platform.OS === "ios" ? "padding" : "height"}
          keyboardVerticalOffset={top + bottom}
        >
          <Input variant="rounded" size="lg">
            <InputField placeholder="Message..." />
            <InputSlot className="pr-3">
              <InputIcon as={ArrowUpIcon} size="xl" />
            </InputSlot>
          </Input>
        </KeyboardAvoidingView>
      </VStack>
    </SafeAreaView>
  );
}
