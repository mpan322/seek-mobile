import { Button, ButtonText } from "@/components/ui/button";
import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Input, InputField, InputSlot } from "@/components/ui/input";
import { VStack } from "@/components/ui/vstack";
import { Text } from "@/components/ui/text";
import { Link, useRouter } from "expo-router";
import { LinkText } from "@/components/ui/link";
import { useProgress } from "@/components/custom/progress-bar";
import { useEffect } from "react";

export default function ValidateEmail() {
  const router = useRouter();
  const { setProgress } = useProgress();

  useEffect(() => {
    setProgress(0.5);
  }, []);
  
  function handleSubmit() {
    router.navigate("/(auth)/signup/profile-photo");
  }

  return (
    <VStack className="gap-8 p-4">
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
        <Button className="rounded-xl" size="lg" onPress={() => handleSubmit()}>
          <ButtonText>Verify Email</ButtonText>
        </Button>
      </FormControl>

      <VStack className="gap-4 items-center">
        <Link href="/(auth)/signup">
          <LinkText size="lg">Cancel</LinkText>
        </Link>
      </VStack>
    </VStack>
  );
}
