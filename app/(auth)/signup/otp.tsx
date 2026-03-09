import { VStack } from "@/components/ui/vstack";
import { LinkText } from "@/components/ui/link";
import { useProgress } from "@/components/custom/progress-bar";
import AppleOTPInput from "@/components/custom/otp-input";
import { Button, ButtonText } from "@/components/ui/button";
import { Box } from "@/components/ui/box";
import { useEffect, useState } from "react";
import { useAuthControllerVerifyEmail, useAuthControllerResendOtp } from "@/src/api/seek-api/auth";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { Link, useRouter } from "expo-router";
import { useSignupState } from "./state";
import { SuccessToast } from "@/components/custom/success-toast";

export default function Otp() {
  const { setProgress } = useProgress();
  useEffect(() => {
    setProgress(0.5);
  }, []);

  const router = useRouter();
  const [code, setCode] = useState<string>("")

  const toast = useToast();
  const { userId, email } = useSignupState(st => st.data);

  const { mutate: submitOtp } = useAuthControllerVerifyEmail();
  function handleSubmit() {
    console.log("userId", userId)
    submitOtp({
      data: {
        userId,
        token: code,
      },
    }, {
      onError(error) {
        toast.show({
          placement: "top",
          render: props => <ErrorToast {...props} error={error.response?.data} />
        });
      },
      onSuccess() {
        router.navigate("/signup/profile-photo")
      }
    });
  }

  const { mutate } = useAuthControllerResendOtp();
  function handleResend() {
    mutate({
      data: {
        email: email + "@st-andrews.ac.uk",
      },
    }, {
      onError(error) {
        toast.show({
          placement: "top",
          render: props => <ErrorToast {...props} error={error.response?.data} />
        });
      },
      onSuccess() {
        toast.show({
          placement: "top",
          render: props => <SuccessToast message="Resent OTP" {...props} />
        });
      }
    });
  }

  return (
    <VStack className="gap-8 px-4 py-20 items-center h-full justify-between">
      <VStack>
        <AppleOTPInput setCode={setCode} code={code} />
        <Box className="flex flex-row justify-between">
          <Button className="self-center"
            variant="outline"
            onPress={handleResend}>
            <ButtonText>Resend</ButtonText>
          </Button>
          <Button disabled={code.length < 5}
            className="self-center"
            onPress={handleSubmit}>
            <ButtonText>Submit</ButtonText>
          </Button>
        </Box>
      </VStack>
      <Link href="/(auth)/signup">
        <LinkText size="lg" className="text-secondary-700">
          DEV: Back
        </LinkText>
      </Link>
    </VStack >
  );
}

// <Button className="self-center" variant="link">
//   <ButtonText>Resend</ButtonText>
// </Button>
