import { uploadControllerGetPresignedUrl, useUploadControllerGetPresignedUrl } from "@/src/api/seek-api/upload";

type UploadFileProps = {
  uri: string,
  mimeType: string,
  name: string,
  folder: "public" | "private"
};

export async function uploadFile({ uri, mimeType, name }: UploadFileProps) {
  const response = await fetch(uri);
  const blob = await response.blob();
  const data = await uploadControllerGetPresignedUrl({
    fileType: mimeType,
    filename: name,
    folder: "public"
  });
  await fetch(data.uploadUrl, {
    method: "PUT",
    body: blob,
    headers: {
      "Content-Type": mimeType
    }
  });
  return data;
}
