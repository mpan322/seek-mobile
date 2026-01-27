import { Text } from "@/components/ui/text";
import { View } from "react-native";
import { BackButton } from "@/components/custom/back-button";
import { useContactControllerContact } from "@/src/api/seek-api/contact";
import {
  FormControl,
  FormControlLabel,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { Textarea, TextareaInput } from "@/components/ui/textarea";
import { Button, ButtonSpinner, ButtonText } from "@/components/ui/button";
import { HStack } from "@/components/ui/hstack";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { Loader } from "@/components/custom/loader";
import { useToast } from "@/components/ui/toast";
import { ErrorToast } from "@/components/custom/error-toast";
import { SuccessToast } from "@/components/custom/success-toast";
import { useEffect, useState } from "react";
import { SafeAreaView } from "react-native-safe-area-context";

export default function ContactScreen() {
  const { data, isLoading, isError, error } = useAuthControllerCurrentUser();
  const { mutate, isPending } = useContactControllerContact();
  const toast = useToast();

  useEffect(() => {
    if (!data) {
      toast.show({
        placement: "top",
        render: (props) => <ErrorToast {...props} />,
      });
      return;
    }
  }, [error, isError]);

  const [message, setMessage] = useState("");
  function handleSubmit() {
    if (!data) {
      toast.show({
        placement: "top",
        render: (props) => <ErrorToast {...props} />,
      });
      return;
    }

    mutate(
      {
        data: {
          message: message,
          name: data.name,
          email: data.email,
        },
      },
      {
        onSuccess: () => {
          toast.show({
            placement: "top",
            render: (props) => (
              <SuccessToast {...props} message="Contact successful" />
            ),
          });
        },
        onError: (err) => {
          toast.show({
            placement: "top",
            render: (props) => <ErrorToast {...props} error={err.response?.data} />,
          });
        },
      },
    );
  }

  return (
    <SafeAreaView>
      <Loader isLoading={isLoading}>
        <View className="p-6 bg-background-0 h-full gap-8">
          <BackButton title="Contact" />
          <FormControl>
            <FormControlLabel>
              <FormControlLabelText size="xl">
                Send a message to us:
              </FormControlLabelText>
            </FormControlLabel>
            <Textarea size="xl">
              <TextareaInput
                onChangeText={setMessage}
                value={message}
                placeholder="Message..."
              />
            </Textarea>
          </FormControl>

          <HStack className="justify-center">
            <Button size="lg" className="w-[80%]" onPress={handleSubmit}>
              {isPending && <ButtonSpinner />}
              <ButtonText>Send</ButtonText>
            </Button>
          </HStack>
        </View>
      </Loader>
    </SafeAreaView>
  );
}
