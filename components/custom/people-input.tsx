import { HStack } from "@/components/ui/hstack";
import { Pressable } from "react-native";
import { Text } from "@/components/ui/text";
import { Box } from "@/components/ui/box";


type PeopleInputProps = {
  value: number;
  onChange: (value: number) => void;
};

export function PeopleInput({ value, onChange }: PeopleInputProps) {
  const selected = value;

  function Dot({ label, value }: { label: string; value: number }) {
    return (
      <Pressable
        onPressIn={() => onChange(value)}
        className={`border-[1px] border-white rounded-xl w-10 h-10 items-center justify-center ${value === selected ? "bg-white" : ""}`}
      >
        <Text
          size="lg"
          className={`align-baseline text-center ${value === selected ? "text-black" : ""}`}
        >
          {label}
        </Text>
      </Pressable>
    );
  }

  return (
    <Box className="gap-2">
      <Text size="lg">Number of People</Text>
      <HStack className="justify-between">
        <Dot label="1" value={1} />
        <Dot label="2" value={2} />
        <Dot label="3" value={3} />
        <Dot label="4" value={4} />
        <Dot label="5+" value={5} />
      </HStack>
    </Box>
  );
}
