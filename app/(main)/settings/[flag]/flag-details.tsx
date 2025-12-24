import { VStack } from "@/components/ui/vstack";
import { FlagStatusPill } from "../previous-flags";
import { Card } from "@/components/ui/card";
import { HStack } from "@/components/ui/hstack";
import { Text } from "@/components/ui/text";
import { useLocalSearchParams, useRouter } from "expo-router";
import { Divider } from "@/components/ui/divider";
import { ScrollView } from "react-native";

type FlagDetailRecordProps = {
  label: string;
  value: string;
};

function FlagDetailRecord({ label, value }: FlagDetailRecordProps) {
  return (
    <HStack className="justify-between">
      <Text className="color-secondary-800">{label}</Text>
      <Text>{value}</Text>
    </HStack>
  );
}

export default function FlagDetailsScreen() {
  const params = useLocalSearchParams<{ flag: string }>();
  const flag = params.flag;

  return (
    <ScrollView>
      <VStack className="p-6 gap-8 bg-background-0">
        <FlagStatusPill status="RESOLVED" size="xl" />

        <Card className="border-[1px] border-background-400 rounded-xl gap-3 p-6">
          <FlagDetailRecord label="Flag ID" value={flag} />
          <Divider />
          <FlagDetailRecord
            label="Date Submitted"
            value="This is a description"
          />
          <Divider />
          <FlagDetailRecord label="Category" value="This is a description" />
          <Divider />
          <FlagDetailRecord
            label="Reported User"
            value="This is a description"
          />
          <Divider />
          <FlagDetailRecord
            label="Resolution Date"
            value="This is a description"
          />
        </Card>

        <Card className="border-[1px] border-background-400 rounded-xl gap-2 p-6">
          <Text className="text-center" bold size="lg">
            Your Report
          </Text>
          <Text className="text-primary-100 text-center">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
            ullamcorper, nisl in tincidunt aliquet, lorem justo aliquam lectus,
            quis aliquam nisi nisl in nisi. Sed ullamcorper, nisl in tincidunt
            aliquet, lorem justo aliquam lectus, quis aliquam nisi nisl in nisi.
            Sed ullamcorper, nisl in tincidunt aliquet, lorem justo aliquam
            lectus, quis aliquam nisi nisl in nisi.
          </Text>
        </Card>

        <Card className="border-[1px] border-background-400 rounded-xl gap-2 p-6">
          <Text className="text-center" bold size="lg">
            Seek Support Response
          </Text>
          <VStack className="gap-4">
            <Text className="text-primary-100 text-center">
              Thank you for reporting this incident. After reviewing the case
              and speaking with both parties, we have taken the following
              actions:
            </Text>

            <Text className="text-primary-100 text-center">
              - We have suspended the reported user's account.
            </Text>

            <Text className="text-primary-100 text-center">
              We take flags seriously and appreciate your detailed report. If
              you need any further assistance, please don't hesitate to contact
              us.
            </Text>
          </VStack>
        </Card>
      </VStack>
    </ScrollView>
  );
}
