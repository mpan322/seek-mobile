import { HeartIcon } from "lucide-react-native";
import { Pressable } from "../ui/pressable";

export type LikeButtonProps = {
  like: () => Promise<void>;
  unlike: () => Promise<void>;
  liked: boolean;
  size?: number;
};

export function LikeButton({
  like,
  unlike,
  liked,
  size = 35,
}: LikeButtonProps) {
  return (
    <Pressable onPressIn={() => liked ? unlike() : like()} hitSlop={10}>
      <HeartIcon fill={liked ? "red" : "white"}
        size={size} />
    </Pressable>
  );
}

