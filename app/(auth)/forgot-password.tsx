import { Button, ButtonText } from "@/components/ui/button";
import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Input, InputField, InputSlot } from "@/components/ui/input";
import { VStack } from "@/components/ui/vstack";
import { Text } from "@/components/ui/text";
import { Pressable } from "@/components/ui/pressable";
import { Icon } from "@/components/ui/icon/index.web";
import { ArrowLeftIcon } from "@/components/ui/icon";
import { useRouter } from "expo-router";
import { HStack } from "@/components/ui/hstack";

export default function ForgotPassword() {
  const router = useRouter();

  return (
    <VStack className="gap-8 p-4">
      <Pressable onPress={() => router.navigate("/(auth)/login")}>
        <HStack className="items-center gap-2">
          <Icon as={ArrowLeftIcon} size="xl" />
          <Text underline size="xl" className="text-primary-900">
            Back
          </Text>
        </HStack>
      </Pressable>

      {/* Email */}
      <FormControl>
        <FormControlLabel>
          <FormControlLabelText size="lg">Email</FormControlLabelText>
        </FormControlLabel>
        <Input size="lg">
          <InputField placeholder="Enter your email" />
          <InputSlot style={{ paddingRight: 10 }}>
            <Text bold>@st-andrews.ac.uk</Text>
          </InputSlot>
        </Input>
      </FormControl>

      <FormControl>
        <Button className="rounded-xl" size="lg">
          <ButtonText>Send Reset Link</ButtonText>
        </Button>
      </FormControl>
    </VStack>
  );
}
