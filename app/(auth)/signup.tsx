import { Button, ButtonText } from "@/components/ui/button";
import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { VStack } from "@/components/ui/vstack";
import { create } from "zustand";
import { EmailInput } from "@/components/custom/email-input";
import { PasswordInput } from "@/components/custom/password-input";
import { isValidPassword } from "@/src/utils/validate-password";
import { useAuthControllerSignup } from "@/src/api/auth";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { Input, InputField } from "@/components/ui/input";
import { useAppStore } from "@/src/store/useAppStore";
import { Link, useRouter } from "expo-router";
import { LinkText } from "@/components/ui/link";

type SignupFormData = {
  email: string;
  password: string;
  name: string;
  confirmPassword: string;
};

interface SignupForm {
  data: SignupFormData;
  setKey: (
    key: keyof SignupFormData,
  ) => (value: SignupFormData[keyof SignupFormData]) => void;
}

const useSignup = create<SignupForm>((set) => ({
  data: {
    email: "",
    password: "",
    confirmPassword: "",
    name: "",
  },
  setKey: (key) => (value) => {
    set((state) => ({
      data: { ...state.data, [key]: value },
    }));
  },
}));

export default function Signup() {
  const { data, setKey } = useSignup((state) => state);
  const { name, email, password, confirmPassword } = data;
  const login = useAppStore(state => state.login);
  const router = useRouter();

  const { mutate } = useAuthControllerSignup();
  const toast = useToast();

  function isValid(): boolean {
    console.log(data)
    return (
      email.length > 0 &&
      password.length > 0 &&
      name.length > 0 &&
      confirmPassword.length > 0 &&
      isValidPassword(password) &&
      password === confirmPassword
    );
  }

  const handleSubmit = async () => {
    console.log("handling submit");
    mutate(
      {
        data: {
          email: email + "@st-andrews.ac.uk",
          password,
          name,
          role: "STUDENT",
          imageUrl: "https://picsum.photos/200",
          emailVerificationToken: "",
          emailVerificationTokenExpires: "",
        },
      },
      {
        onSuccess: (res) => {
          console.log("signup successful", res.data);
          login();
          router.navigate("/(main)/(tabs)/home");
        },
        onError: (err) => {
          console.error(err);
          toast.show({
            placement: "top",
            render: (props) => (
              <ErrorToast {...props} error={err.response?.data} />
            ),
          });
        },
      },
    );
  };

  return (
    <VStack className="gap-8 p-4">
      <FormControl>
        <FormControlLabel>
          <FormControlLabelText size="lg">Name</FormControlLabelText>
        </FormControlLabel>
        <Input size="lg">
          <InputField
            value={name}
            placeholder="Enter your name"
            onChangeText={setKey("name")}
          />
        </Input>
      </FormControl>

      {/* Email */}
      <EmailInput setEmail={setKey("email")} email={email} />

      {/* Password */}
      <PasswordInput setPassword={setKey("password")} password={password} />

      {/* Confirm Password */}
      <FormControl isInvalid={confirmPassword !== password}>
        <FormControlLabel>
          <FormControlLabelText size="lg">
            Confirm Password
          </FormControlLabelText>
        </FormControlLabel>
        <Input size="lg">
          <InputField
            placeholder="Confirm your password"
            onChangeText={setKey("confirmPassword")}
            value={confirmPassword}
          />
        </Input>
      </FormControl>

      <FormControl>
        <Button
          onPress={handleSubmit}
          action={!isValid() ? "secondary" : "primary"}
          disabled={!isValid()}
          size="lg"
        >
          <ButtonText>Sign Up</ButtonText>
        </Button>
      </FormControl>

      <VStack className="gap-4 items-center">
        <Link href="/(auth)/login">
          <LinkText size="lg">Already have an account? Login.</LinkText>
        </Link>
      </VStack>

    </VStack>
  );
}
