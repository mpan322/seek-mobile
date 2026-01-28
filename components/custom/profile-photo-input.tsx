import { Pressable } from "../ui/pressable";
import { Avatar, AvatarImage } from "../ui/avatar";
import { UserPlusIcon } from "lucide-react-native";
import { useProfilePicture } from "@/hooks/use-profile-photo";

export function ProfilePhotoInput() {
  const { pickImage, image } = useProfilePicture();

  return (
    <Pressable onPress={() => pickImage(false)}>
      <Avatar
        size="2xl"
        style={{
          justifyContent: "center",
          alignItems: "center",
          overflow: "hidden",
        }}
        className="bg-background-200 items-center justify-center overflow-hidden"
      >
        {image ? (
          <AvatarImage
            source={{ uri: image }}
            alt="Profile Photo"
            resizeMode="cover"
          />
        ) : (
          <UserPlusIcon size="33%" color="white" />
        )}
      </Avatar>
    </Pressable>
  );
}
