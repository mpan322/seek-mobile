import { BackButton } from "@/components/custom/back-button";
import { VStack } from "@/components/ui/vstack/index";
import { Text } from "@/components/ui/text/index";
import { SafeAreaView } from "react-native-safe-area-context";
import { Divider } from "@/components/ui/divider";
import { Button, ButtonText } from "@/components/ui/button";
import { Card } from "@/components/ui/card/index";
import { HStack } from "@/components/ui/hstack";
import { BuildingIcon, HandshakeIcon, IdCardIcon, UsersIcon, WalletIcon } from "lucide-react-native";
import React, { ReactNode, useCallback, useState } from "react";
import { ScrollView } from "react-native";
import * as DocumentPicker from 'expo-document-picker';
import { uploadFile } from "@/src/utils/upload-file";
import { AddDocumentDtoDocumentType, UserDto } from "@/src/api/seek-api/model";
import { Loader } from "@/components/custom/loader";
import { Redirect } from "expo-router";
import { useAuthControllerCurrentUser } from "@/src/api/seek-api/auth";
import { useToast } from "@/components/ui/toast";
import { errorToast } from "@/src/utils/error-toast";
import { useProfilePicture } from "@/hooks/use-profile-photo";
import { useUsersControllerAddDocument } from "@/src/api/seek-api/users";
import { Actionsheet, ActionsheetBackdrop, ActionsheetContent, ActionsheetDragIndicator, ActionsheetDragIndicatorWrapper, ActionsheetItem, ActionsheetItemText } from "@/components/ui/actionsheet";

export default function PersonalInfo() {
  const { data, isLoading, isError } = useAuthControllerCurrentUser();
  if (isError) {
    return <Redirect href="/home" />
  }

  return (
    <Loader isLoading={isLoading || !data}>
      <InnerPersonalInfo user={data!} />
    </Loader>
  );
}

type InnerPersonalInfoProps = {
  user: UserDto
}

function InnerPersonalInfo({ user }: InnerPersonalInfoProps) {
  const toast = useToast();

  const { mutate: addDocument } = useUsersControllerAddDocument();

  const handleFile = async (doc: AddDocumentDtoDocumentType) => {
    // get the file
    let asset: DocumentPicker.DocumentPickerAsset;
    try {
      const result = await DocumentPicker.getDocumentAsync({
        type: "text/pdf",
        copyToCacheDirectory: true,
        multiple: false,
      });
      if (result.canceled) {
        return;
      }
      asset = result.assets[0];
    } catch (err) {
      console.warn("Document picking failed", err);
      return;
    }

    // upload the file
    const userId = user._id;
    let fileUrl: string;
    try {
      const data = await uploadFile({
        uri: asset.uri,
        mimeType: asset.mimeType ?? "text/pdf",
        name: `${userId}-${doc}`,
        folder: "private",
      });
      fileUrl = data.fileUrl;
    } catch {
      errorToast({ toast, data: { message: "Failed to upload file.", statusCode: -1 } });
      return;
    }

    // modify the user profile
    addDocument({
      data: {
        url: fileUrl,
        documentType: doc
      }
    }, {
      onError(error) {
        errorToast({ toast, data: error.response?.data });
      },
    });
  };

  const { pickImage, image } = useProfilePicture(user.profilePicUrl);
  const [show, setShow] = useState<boolean>(false)
  const handleImage = useCallback(async (camera: boolean) => {
    const image = await pickImage(camera);
    if (image == null) {
      errorToast({ toast, data: { message: "No file data found.", statusCode: -1 } })
      setShow(false);
      return;
    }

    // upload the file
    const userId = user._id;
    const mimeType = image.mimeType ?? "image/*";
    let fileUrl: string;
    try {
      const data = await uploadFile({
        uri: image.uri,
        mimeType,
        name: `${userId}-id`,
        folder: "private",
      });
      fileUrl = data.fileUrl;
    } catch {
      errorToast({ toast, data: { message: "Failed to upload file.", statusCode: -1 } });
      return;
    }

    // update the user profile
    addDocument({
      data: {
        url: fileUrl,
        documentType: "IDENTIFICATION",
      },
    }, {
      onError(error) {
        errorToast({ toast, data: error.response?.data });
      },
    });
    setShow(false);
  }, []);

  return (
    <SafeAreaView>
      <ScrollView contentContainerClassName="p-6 gap-4 min-h-full"
        showsVerticalScrollIndicator={false}
        decelerationRate={0.9}>
        <BackButton title="Peronal Information" />

        <DocumentCard
          onPress={() => setShow(true)}
          title="Identification"
          description="Please upload your passport or national ID."
          icon={
            <IdCardIcon />
          } />

        <DocumentCard
          onPress={() => handleFile("PROOF_OF_INCOME")}
          title="Proof of Income"
          description="Please upload your proof of income."
          icon={
            <WalletIcon />
          } />

        <DocumentCard
          onPress={() => handleFile("GUARANTOR_AGREEMENT")}
          title="Guarantor Agreement"
          description="Please upload your guarantor agreement with a UK based guarantor."
          icon={
            <UsersIcon />
          } />

        <DocumentCard
          onPress={() => handleFile("LANDLORD_REFERENCE")}
          title="Landlord Reference"
          description="Please your previous landlord reference or University accommodation letter of reference."
          icon={
            <BuildingIcon />
          } />

        <DocumentCard
          onPress={() => handleFile("CHARACTER_REFERENCE")}
          title="Character Reference"
          description="Please upload a character reference from a non-friend and non-relative."
          icon={
            <HandshakeIcon />
          } />

        <Actionsheet isOpen={show} onClose={() => setShow(false)} useRNModal>
          <ActionsheetBackdrop />
          <ActionsheetContent>
            <ActionsheetDragIndicatorWrapper>
              <ActionsheetDragIndicator />
            </ActionsheetDragIndicatorWrapper>
            <ActionsheetItem onPress={() => handleImage(true)}>
              <ActionsheetItemText>Take Photo</ActionsheetItemText>
            </ActionsheetItem>
            <ActionsheetItem onPress={() => handleImage(false)}>
              <ActionsheetItemText>Choose from Library</ActionsheetItemText>
            </ActionsheetItem>
          </ActionsheetContent>
        </Actionsheet>
      </ScrollView>
    </SafeAreaView>
  );
}

type DocumentCardProps = {
  title: string;
  description: string;
  icon: ReactNode;
  onPress: () => void;
}

function DocumentCard({
  title,
  description,
  icon,
  onPress
}: DocumentCardProps) {
  return (
    <Card className="gap-2 border-[1px] border-white rounded-xl">
      <HStack className="items-center gap-2">
        {icon}
        <Text className="text-2xl">{title}</Text>
      </HStack>
      <Divider />
      <VStack className="gap-4">
        <Text>{description}</Text>
        <Button className="w-[50%] self-center" onPress={onPress}>
          <ButtonText>Upload</ButtonText>
        </Button>
      </VStack>
    </Card>
  )
}
