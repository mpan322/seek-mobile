import { BackButton } from "@/components/custom/back-button";
import { VStack } from "@/components/ui/vstack/index";
import { Text } from "@/components/ui/text/index";
import { SafeAreaView } from "react-native-safe-area-context";
import { Divider } from "@/components/ui/divider";
import { Button, ButtonText } from "@/components/ui/button";
import { Card } from "@/components/ui/card/index";
import { HStack } from "@/components/ui/hstack";
import { BuildingIcon, HandshakeIcon, IdCardIcon, UsersIcon, WalletIcon } from "lucide-react-native";
import { ReactNode } from "react";
import { ScrollView } from "react-native";

export default function PersonalInfo() {

  return (
    <SafeAreaView>
      <ScrollView contentContainerClassName="p-6 gap-4 min-h-full"
        showsVerticalScrollIndicator={false}
        decelerationRate={0.9}>
        <BackButton title="Peronal Information" />

        <DocumentCard
          title="Identification"
          description="Please upload your passport or national ID."
          icon={
            <IdCardIcon />
          } />

        <DocumentCard
          title="Proof of Income"
          description="Please upload your proof of income."
          icon={
            <WalletIcon />
          } />

        <DocumentCard
          title="Guarantor Agreement"
          description="Please upload your guarantor agreement with a UK based guarantor."
          icon={
            <UsersIcon />
          } />

        <DocumentCard
          title="Landlord Reference"
          description="Please your previous landlord reference or University accommodation letter of reference."
          icon={
            <BuildingIcon />
          } />

        <DocumentCard
          title="Character Reference"
          description="Please upload a character reference from a non-friend and non-relative."
          icon={
            <HandshakeIcon />
          } />
      </ScrollView>
    </SafeAreaView>
  );
}

type DocumentCardProps = {
  title: string;
  description: string;
  icon: ReactNode;
}

function DocumentCard({
  title,
  description,
  icon,
}: DocumentCardProps) {
  return (
    <Card className="gap-2 border-[1px] border-white rounded-xl">
      <HStack className="items-center gap-2">
        {icon}
        <Text className="text-2xl">{title}</Text>
      </HStack>
      <Divider />
      <VStack className="gap-4">
        <Text>{description}</Text>
        <Button className="w-[50%] self-center">
          <ButtonText>Upload</ButtonText>
        </Button>
      </VStack>
    </Card>
  )
}
