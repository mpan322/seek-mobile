import { Button, ButtonText } from "@/components/ui/button";
import { FormControl, FormControlLabel, FormControlLabelText } from "@/components/ui/form-control";
import { Input, InputField, InputSlot } from "@/components/ui/input";
import { VStack } from "@/components/ui/vstack";
import { Text } from "@/components/ui/text";

export default function ForgotPassword() {
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
        <Button className="rounded-xl" size="lg">
          <ButtonText>Send Reset Link</ButtonText>
        </Button>
      </FormControl>
    </VStack>
  );
}
