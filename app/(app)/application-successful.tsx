import { Box } from '@/components/ui/box';
import { Button, ButtonText } from '@/components/ui/button';
import { Center } from '@/components/ui/center';
import { Heading } from '@/components/ui/heading';
import { CheckCircleIcon, Icon } from '@/components/ui/icon';
import { VStack } from '@/components/ui/vstack';
import { Text } from '@/components/ui/text';
import { useRouter } from 'expo-router';

function ApplicationSuccess() {
  const navigation = useRouter();

  return (
    <Box className="flex-1 bg-white p-6">
      <Center className="flex-1">
        <VStack space="xl" className="items-center text-center">
          {/* Success Icon */}
          <Box className="bg-success-100 p-6 rounded-full">
            <Icon as={CheckCircleIcon} size="xl" className="text-success-600" />
          </Box>

          {/* Message */}
          <VStack space="xs" className="items-center">
            <Heading size="2xl" className="text-typography-900 text-center">
              Application Sent!
            </Heading>
          </VStack>

          {/* Info Card */}
          <Box className="bg-background-50 p-4 rounded-lg w-full border border-outline-100">
            <Text size="sm" className="text-typography-600 text-center">
              The landlord in St Andrews will review your profile and documents shortly. You'll receive a push notification once they respond.
            </Text>
          </Box>
        </VStack>
      </Center>

      {/* Action Buttons */}
      <VStack space="md" className="mb-8">
        <Button
          size="lg"
          variant="solid"
          action="primary"
          onPress={() => navigation.navigate("/saved-listings")}
        >
          <ButtonText>View My Applications</ButtonText>
        </Button>
        <Button
          size="lg"
          variant="outline"
          action="secondary"
          onPress={() => navigation.navigate('/home')}
        >
          <ButtonText>Back to Search</ButtonText>
        </Button>
      </VStack>
    </Box >
  );
};

export default ApplicationSuccess;

