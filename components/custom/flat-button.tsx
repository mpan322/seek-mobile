import { Button, ButtonIcon, ButtonText } from "@/components/ui/button";
import { ChevronsRightIcon } from "@/components/ui/icon";
import { HStack } from "@/components/ui/hstack";

export type FlatButtonProps = {
  onPress: () => void;
  text: string;
};

export function FlatButton({ onPress, text }: FlatButtonProps) {
  return (
    <Button variant="link" className="px-6 h-16" size="lg" onPress={onPress}>
      <HStack className="justify-between w-full">
        <ButtonText className="align-middle">{text}</ButtonText>
        <ButtonIcon as={ChevronsRightIcon} />
      </HStack>
    </Button>
  );
}
