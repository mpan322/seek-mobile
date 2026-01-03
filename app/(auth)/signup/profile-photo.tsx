import { VStack } from "@/components/ui/vstack";
import { ProfilePhotoInput } from "@/components/custom/profile-photo-input";
import { Link } from "expo-router";
import { LinkText } from "@/components/ui/link";
import { useProgress } from "@/components/custom/progress-bar";
import { useEffect } from "react";
import { Text } from "@/components/ui/text";

export default function ProfilePhoto() {
  const { setProgress } = useProgress();
  useEffect(() => {
    setProgress(0.95);
  }, []);

  return (
    <VStack className="gap-8 px-4 py-20 items-center h-full justify-between">
      <ProfilePhotoInput />
      <Link href="/(auth)/signup/verify-email">
        <LinkText size="lg" className="text-secondary-700">
          Skip for now
        </LinkText>
      </Link>
      <Link href="/(auth)/signup/verify-email">
        <LinkText size="lg" className="text-secondary-700">
          DEV: Back
        </LinkText>
      </Link>
    </VStack>
  );
}
