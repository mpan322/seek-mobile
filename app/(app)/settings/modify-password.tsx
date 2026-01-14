import { Text } from "@/components/ui/text";
import { Card } from "@/components/ui/card";
import { Box } from "@/components/ui/box";
import { Input, InputField } from "@/components/ui/input";
import { Button, ButtonText } from "@/components/ui/button";
import { PasswordInput } from "@/components/custom/password-input";
import { create } from "zustand";
import { View } from "react-native";
import { VStack } from "@/components/ui/vstack/index.web";
import BackButton from "@/components/custom/back-button";

type InputState = {
  password: string;
  confirmPassword: string;
  setPassword: (password: string) => void;
  setConfirmPassword: (confirmPassword: string) => void;
};

const useInputState = create<InputState>((set) => ({
  password: "",
  confirmPassword: "",
  setPassword: (password: string) => set({ password }),
  setConfirmPassword: (confirmPassword: string) => set({ confirmPassword }),
}));

export default function ModifyPasswordScreen() {
  const { password, confirmPassword, setPassword, setConfirmPassword } =
    useInputState();

  return (
    <View className="p-6 bg-background-0 h-full gap-4">
      <BackButton />
      <Card className="w-full rounded-xl p-6 border-2 gap-6 border-primary-900 items-center">
        <Text size="xl" bold>
          Modify Password
        </Text>

        <Input variant="rounded" className="border-primary-900" size="lg">
          <InputField placeholder="New Password" />
        </Input>

        <Input variant="rounded" className="border-primary-900" size="lg">
          <InputField placeholder="Confirm password" />
        </Input>

        <Button
          variant="solid"
          action="primary"
          size="lg"
          className="w-full rounded-full"
        >
          <ButtonText>Confirm</ButtonText>
        </Button>
      </Card>
    </View>
  );
}
