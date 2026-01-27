import {
  FormControl,
  FormControlLabel,
  FormControlLabelAstrick,
  FormControlLabelText,
} from "@/components/ui/form-control";
import { ButtonText, Button } from "@/components/ui/button";
import { Input, InputField } from "@/components/ui/input";
import { Text } from "@/components/ui/text";
import { Textarea, TextareaInput } from "@/components/ui/textarea";
import { VStack } from "@/components/ui/vstack";
import { create } from "zustand";
import { useCallback } from "react";
import { SafeAreaView } from "react-native-safe-area-context";
import { BackButton } from "@/components/custom/back-button";

type IssueState = {
  issue: string;
  accountName: string;
  setIssue: (issue: string) => void;
  setAccountName: (accountName: string) => void;
  clear: () => void;
  isValid: boolean;
};

const useIssueState = create<IssueState>((set, get) => ({
  issue: "",
  accountName: "",
  isValid: get()?.issue.length > 0,
  setIssue: (issue: string) => set({ issue }),
  setAccountName: (accountName: string) => set({ accountName }),
  clear: () => set({ issue: "", accountName: "" }),
}));

export default function FlagIssueScreen() {
  const { issue, accountName, setIssue, setAccountName, isValid } =
    useIssueState();

  const submit = () => {
    console.log("submitting");
  };

  return (
    <SafeAreaView>
      <VStack className="p-6 gap-8">
        <BackButton title="Flag Issue" />
        <FormControl isRequired>
          <FormControlLabel>
            <FormControlLabelText>Explain the issue</FormControlLabelText>
          </FormControlLabel>
          <Textarea>
            <TextareaInput
              placeholder="Please describe the issue in detail..."
              value={issue}
              onChangeText={setIssue}
            />
          </Textarea>
        </FormControl>

        <FormControl>
          <FormControlLabel>
            <FormControlLabelText>Account Name (optional)</FormControlLabelText>
          </FormControlLabel>
          <Input variant="rounded" size="lg">
            <InputField
              placeholder="Name of the account"
              value={accountName}
              onChangeText={setAccountName}
            />
          </Input>
        </FormControl>

        <FormControl>
          <Button
            onPress={submit}
            className="rounded-full"
            size="lg"
            isDisabled={!isValid}
          >
            <ButtonText>Submit</ButtonText>
          </Button>
        </FormControl>
      </VStack>
    </SafeAreaView>
  );
}
