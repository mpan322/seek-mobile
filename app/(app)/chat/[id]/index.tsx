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
import { Redirect, useLocalSearchParams, useRouter } from "expo-router";
import { Pressable } from "react-native-gesture-handler";
import { useCallback, useEffect, useRef, useState } from "react";
import { io, Socket } from "socket.io-client";
import { useAuth } from "@/src/store/auth-store";
import { useFocusEffect } from "@react-navigation/native";
import { errorToast } from "@/src/utils/error-toast";
import { useToast } from "@/components/ui/toast";
import { useConversationControllerGetMessages, useConversationControllerSendMessage } from "@/src/api/seek-api/conversation";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";

enum EventNames {
  NEW_MESSAGE = "message:new",
  JOIN = "conversation:join",
}

const BACKEND_URL = process.env.EXPO_PUBLIC_API_URL || "http://localhost:3000"

export default function ChatScreen() {
  const { top, bottom } = useSafeAreaInsets();
  const router = useRouter();
  const accessToken = useAuth(state => state.accessToken);

  const { mutate } = useConversationControllerSendMessage({})
  const clientRef = useRef<Socket>(null);
  const toast = useToast();


  const { id } = useLocalSearchParams<{ id?: string }>();
  if (!id) {
    return <Redirect href="/home" />;
  }

  const { data: messages, isError } = useConversationControllerGetMessages(id, {});
  const { data: user, isError: isUserError } = useAuthControllerCurrentUser();


  useEffect(() => {
    if (isError) {
      console.log("failed to get messages")
      router.navigate("/home");
    }
  }, [isError]);

  const [message, setMessage] = useState<string>("");
  function sendMessage(id: string) {
    if (message.length === 0) {
      return;
    }
    if (!clientRef.current) {
      errorToast({ toast, data: { statusCode: -1, message: "Cannot send message, not connected to room." } });
      return;
    }

    mutate({
      id,
      data: {
        message
      }
    }, {
      onError(error) {
        errorToast({ toast, data: error.response?.data })
      }
    });
  }

  useEffect(() => {
    const client = io(`${BACKEND_URL}/converstaion`, {
      extraHeaders: {
        Authorization: `Bearer ${accessToken}`,
        // @ts-ignore
        mobile: true,
      },
      transports: ["websocket"]
    });

    client.emit(EventNames.JOIN)
    clientRef.current = client;


    return () => { client.disconnect(); };
  }, []);

  useFocusEffect(
    useCallback(() => {
      return () => {
        if (!clientRef.current) return;
        clientRef.current.disconnect();
      };
    }, [])
  );

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
          <Pressable onPressIn={() => router.push(`/chat/${chat}/details`)}>
            <Icon as={InfoIcon} size="xl" />
          </Pressable>
        </Box>

        {/* Messages */}
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerClassName="gap-2"
          decelerationRate="fast"
        >
          {messages?.map(({ _id, sender, data }) => (
            <Box
              key={_id}
              className={`flex flex-1 flex-row w-full ${user?._id === sender._id ? "justify-end" : "justify-start"}`}
            >
              <Box className="max-w-[66%]">
                <Text className="w-fit flex-shrink">{sender.name}</Text>
                <Box className="bg-background-200 rounded-md p-2">
                  <Text className="w-fit flex-shrink">{data}</Text>
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
            <InputField placeholder="Message..."
              onSubmitEditing={() => sendMessage(id)}
              onChangeText={setMessage} />
            <InputSlot className="pr-3"
              onPressIn={() => sendMessage(id)}>
              <InputIcon as={ArrowUpIcon} size="xl" />
            </InputSlot>
          </Input>
        </KeyboardAvoidingView>
      </VStack>
    </SafeAreaView>
  );
}
