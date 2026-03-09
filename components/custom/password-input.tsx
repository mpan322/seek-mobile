import {
  FormControl,
  FormControlHelper,
  FormControlHelperText,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Input, InputField, InputIcon, InputSlot } from "../ui/input";
import { isValidPassword } from "@/src/utils/validate-password";
import { Button } from "@/components/ui/button/index";
import { EyeOffIcon, Icon, InfoIcon, EyeIcon } from "../ui/icon";
import { Pressable } from "react-native";
import { useState } from "react";

type PasswordInputProps = {
  password: string;
  setPassword: (password: string) => void;
  label?: string;
  placeholder?: string;
};

export function PasswordInput({
  password,
  setPassword,
  label = "Password",
  placeholder = "Enter your password"
}: PasswordInputProps) {
  const [show, setShow] = useState<boolean>(false);

  return (
    <FormControl isInvalid={password.length > 0 && !isValidPassword(password)}>
      <FormControlLabel>
        <FormControlLabelText size="lg">{label}</FormControlLabelText>
      </FormControlLabel>
      <Input size="lg">
        <InputField
          type={show ? "text" : "password"}
          placeholder={placeholder}
          onChangeText={setPassword}
          value={password}
        />
        <InputSlot className="pr-3" onPressIn={() => setShow((c) => !c)}>
          <InputIcon
            className="text-secondary-800"
            as={show ? EyeOffIcon : EyeIcon}
            size="xl"
          />
        </InputSlot>
      </Input>
      <FormControlHelper>
        <FormControlHelperText size="lg">
          TODO password info.
        </FormControlHelperText>
      </FormControlHelper>
    </FormControl>
  );
}
