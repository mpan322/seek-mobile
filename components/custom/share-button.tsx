import { ExternalLinkIcon } from "lucide-react-native";
import { Pressable } from "../ui/pressable";

export type LikeButtonProps = {
  share: () => void;
  size?: number;
};

export function ShareButton({
  size = 35,
  share
}: LikeButtonProps) {
  return (
    <Pressable onPressIn={share} hitSlop={10}>
      <ExternalLinkIcon
        size={size} />
    </Pressable>
  );
}

