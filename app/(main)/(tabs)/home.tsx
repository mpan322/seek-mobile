import { SafeAreaView } from "react-native-safe-area-context";
import { Text } from "@/components/ui/text";
import { Button, ButtonText } from "@/components/ui/button";
import { useRouter } from "expo-router";
import { useAuth } from "@/src/store/auth-store";

export default function HomeScreen() {
  const logout = useAuth((state) => state.logout);
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
