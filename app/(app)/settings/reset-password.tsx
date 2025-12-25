import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Href, useRouter } from "expo-router";
import { Divider } from "@/components/ui/divider";
import { FlatButton } from "@/components/custom/flat-button";
import { Card } from "@/components/ui/card";
import { Box } from "@/components/ui/box";
import { Input, InputField } from "@/components/ui/input";
import { Button, ButtonText } from "@/components/ui/button";

export default function ResetPasswordScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <Box className="p-6">
      <Card className="w-full p-6 rounded-xl border-2 gap-6 border-primary-900 items-center">
        <Box className="items-center gap-2">
          <Text size="lg" bold>
            Reset Password
          </Text>
          <Text className="text-center px-6">
            Forgot your password? We'll send you a reset link.
          </Text>
        </Box>

        <Input variant="rounded" className="border-primary-900" size="lg">
          <InputField placeholder="Enter your email" />
        </Input>

        <Button
          variant="solid"
          action="primary"
          size="lg"
          className="w-full rounded-full"
        >
          <ButtonText>Send Link</ButtonText>
        </Button>

        <Button variant="link" action="secondary" size="md">
          <ButtonText className="underline font-normal">Resend</ButtonText>
        </Button>
      </Card>
    </Box>
  );
}
