import { HStack } from "@/components/ui/hstack";
import { Pressable } from "@/components/ui/pressable";
import { Text } from "@/components/ui/text";

type SelectBoxOption = {
  label: string;
  value: string;
};

type SelectBoxInputProps = {
  opions: SelectBoxOption[];
  value: string;
  onChange: (value: string) => void;
};

export function SelectBoxInput({
  opions,
  value,
  onChange,
}: SelectBoxInputProps) {
  return (
    <HStack className="gap-2 w-full">
      {opions.map((option) => (
        <Pressable
          key={option.value}
          onPressIn={() => onChange(option.value)}
          className={`border-[1px] border-white rounded-xl flex-1 py-1 items-center justify-center ${option.value === value ? "bg-white" : ""}`}
        >
          <Text
            size="lg"
            className={`align-baseline text-center ${option.value === value ? "text-black" : ""}`}
          >
            {option.label}
          </Text>
        </Pressable>
      ))}
    </HStack>
  );
}
