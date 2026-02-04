import { PropsWithChildren } from "react";
import { Spinner } from "../ui/spinner";
import { View } from "react-native";
import { Text } from "../ui/text"

type LoaderProps = PropsWithChildren<{
  isLoading: boolean;
  message?: string
}>;

export function Loader({
  isLoading,
  children,
  message
}: LoaderProps) {
  if (isLoading) {
    return (
      <View className="h-full w-full items-center justify-center flex gap-4">
        <Spinner size="large" />
        {message && <Text bold size="xl">{message}</Text>}
      </View>
    );
  } else {
    return <>{children}</>;
  }
}
