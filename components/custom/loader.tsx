import { PropsWithChildren } from "react";
import { VStack } from "../ui/vstack/index.web";
import { Spinner } from "../ui/spinner";
import { View } from "react-native";

type LoaderProps = PropsWithChildren<{
  isLoading: boolean;
}>;

export function Loader({ isLoading, children }: LoaderProps) {
  if (isLoading) {
    return (
      <View className="h-full w-full items-center justify-center flex">
        <Spinner size="large" color="white" />
      </View>
    );
  } else {
    return <>{children}</>;
  }
}
