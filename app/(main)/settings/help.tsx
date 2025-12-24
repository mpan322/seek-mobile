import { Text } from "@/components/ui/text";
import { VStack } from "@/components/ui/vstack";
import { Href, useRouter } from "expo-router";
import { Divider } from "@/components/ui/divider";
import { FlatButton } from "@/components/custom/flat-button";

export default function HelpScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <VStack className="p-6 gap-2">
      <FlatButton
        onPress={() => goto("/(main)/settings/contact")}
        text="Contact"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(main)/settings/flag-issue")}
        text="Flag an Issue"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(main)/settings/reset-password")}
        text="Previous Flags"
      />
      <Divider />
    </VStack>
  );
}
