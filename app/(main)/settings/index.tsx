import { VStack } from "@/components/ui/vstack";
import { Divider } from "@/components/ui/divider";
import { Box } from "@/components/ui/box";
import { FlatButton } from "@/components/custom/flat-button";
import { Href, useRouter } from "expo-router";
import { Button, ButtonText } from "@/components/ui/button";

export default function SettingsScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <VStack className="px-6 gap-2">
      <FlatButton
        onPress={() => goto("/(main)/settings/modify-password")}
        text="Modify Password"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(main)/settings/permissions")}
        text="Permissions"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(main)/settings/privacy-policy")}
        text="Privacy Policy"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(main)/settings/terms-of-service")}
        text="Terms of Service"
      />
      <Divider />
      <FlatButton onPress={() => goto("/(main)/settings/help")} text="Help" />
      <Divider />
      <Box className="items-start gap-2 pt-2">
        <Button variant="link" action="secondary" size="lg">
          <ButtonText>Logout</ButtonText>
        </Button>
        <Button variant="link" action="negative" size="lg">
          <ButtonText>Delete Account</ButtonText>
        </Button>
      </Box>
    </VStack>
  );
}
