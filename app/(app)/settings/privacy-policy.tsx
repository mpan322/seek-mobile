import { BackButton } from "@/components/custom/back-button";
import { Text } from "@/components/ui/text";
import { SafeAreaView } from "react-native-safe-area-context";

export default function TermsOfServiceScreen() {
  return (
    <SafeAreaView>
      <BackButton />
      <Text>Terms of Service</Text>
    </SafeAreaView>
  );
}
