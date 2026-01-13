import { Box } from "../ui/box";
import { HStack } from "../ui/hstack";

export type ScrollDotsProps = {
  total: number;
  value: number;
};

export function ScrollDots({ total, value }: ScrollDotsProps) {
  if (total <= 1) {
    return null;
  }

  return (
    <HStack className="gap-3 items-center justify-center w-full">
      {Array.from({ length: total }).map((_, i) => (
        <Box
          key={i}
          className={`w-2 h-2 rounded-full ${i === value ? "bg-white" : "bg-gray-400"}`}
        />
      ))}
    </HStack>
  );
}
