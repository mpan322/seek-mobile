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
import { useAuthControllerSignup } from "@/src/api/seek-api/auth";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { Input, InputField } from "@/components/ui/input";
import { Link, useRouter } from "expo-router";
import { LinkText } from "@/components/ui/link";
import { SuccessToast } from "@/components/custom/success-toast";
import { ProfilePhotoInput } from "@/components/custom/profile-photo-input";
import { SafeAreaView } from "react-native-safe-area-context";
import { useEffect } from "react";
import { useProgress } from "@/components/custom/progress-bar";

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
  const router = useRouter();

  const { setProgress } = useProgress();
  useEffect(() => {
    setProgress(0.05);
  }, []);

  const { mutate } = useAuthControllerSignup();
  const toast = useToast();

  function isValid(): boolean {
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
          otpVerificationCode: "",
        },
      },
      {
        onSuccess: (data) => {
          console.log("signup successful", data);
          toast.show({
            placement: "top",
            render: (props) => (
              <SuccessToast {...props} message="Signup successful" />
            ),
          });
          router.navigate("/(auth)/login");
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
        onSettled: () => console.log("signup finished"),
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
            type="password"
            placeholder="Confirm your password"
            onChangeText={setKey("confirmPassword")}
            value={confirmPassword}
          />
        </Input>
      </FormControl>

      <FormControl>
        <Button onPress={handleSubmit} isDisabled={!isValid()} size="lg">
          <ButtonText>Sign Up</ButtonText>
        </Button>
      </FormControl>

      <VStack className="gap-4 items-center">
        <Link href="/(auth)/login">
          <LinkText size="lg">Already have an account? Login.</LinkText>
        </Link>

        <Link href="/(auth)/signup/verify-email">
          <LinkText size="lg">DEV: Verify Email</LinkText>
        </Link>
      </VStack>
    </VStack>
  );
}
