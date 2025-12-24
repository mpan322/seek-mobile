import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { useAppStore } from "@/src/store/useAppStore";
import { Button, ButtonText } from "@/components/ui/button";
import { useRouter } from "expo-router";

export default function HomeScreen() {
  const logout = useAppStore((state) => state.logout);
  const router = useRouter();

  const handleLogout = () => {
    console.log("logging out")
    logout();
    router.navigate("/");
  };

  return (
    <SafeAreaView>
      <Button onPress={handleLogout}>
        <ButtonText>Logout</ButtonText>
      </Button>
      <Text>Home</Text>
    </SafeAreaView>
  );
}
