import { VStack } from "@/components/ui/vstack";
import { Href, useRouter } from "expo-router";
import { Divider } from "@/components/ui/divider";
import { FlatButton } from "@/components/custom/flat-button";
import { BackButton } from "@/components/custom/back-button";

export default function HelpScreen() {
  const router = useRouter();
  const goto = (path: Href) => {
    router.navigate(path);
  };

  return (
    <VStack className="p-6 gap-2">
      <BackButton title="Help" />
      <FlatButton
        onPress={() => goto("/(app)/settings/contact")}
        text="Contact"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(app)/settings/flag-issue")}
        text="Flag an Issue"
      />
      <Divider />
      <FlatButton
        onPress={() => goto("/(app)/settings/previous-flags")}
        text="Previous Flags"
      />
      <Divider />
    </VStack>
  );
}
