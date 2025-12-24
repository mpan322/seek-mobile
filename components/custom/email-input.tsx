import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Input, InputField, InputSlot } from "@/components/ui/input";
import { Text } from "@/components/ui/text";

type EmailInputProps = {
  email: string;
  setEmail: (email: string) => void;
};

export function EmailInput({ setEmail, email }: EmailInputProps) {
  return (
    <FormControl>
      <FormControlLabel>
        <FormControlLabelText size="lg">Email</FormControlLabelText>
      </FormControlLabel>
      <Input size="lg">
        <InputField
          type="text"
          placeholder="Enter your email"
          value={email}
          onChangeText={setEmail}
        />
        <InputSlot style={{ paddingRight: 10 }}>
          <Text bold>@st-andrews.ac.uk</Text>
        </InputSlot>
      </Input>
    </FormControl>
  );
}
