import {
  FormControl,
  FormControlHelper,
  FormControlHelperText,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Input, InputField } from "../ui/input";
import { isValidPassword } from "@/src/utils/validate-password";

type PasswordInputProps = {
  password: string;
  setPassword: (password: string) => void;
}

export function PasswordInput({
  password,
  setPassword,
}: PasswordInputProps) {
  return (
    <FormControl isInvalid={!isValidPassword(password)}>
      <FormControlLabel>
        <FormControlLabelText size="lg">Password</FormControlLabelText>
      </FormControlLabel>
      <Input size="lg">
        <InputField
          type="password"
          placeholder="Enter your password"
          onChangeText={setPassword}
          value={password}
        />
      </Input>

      <FormControlHelper>
        <FormControlHelperText size="lg">
          Password must contain at least 6 characters.
        </FormControlHelperText>
      </FormControlHelper>
    </FormControl>
  );
}
