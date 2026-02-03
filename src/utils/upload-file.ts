import { uploadControllerGetPresignedUrl, useUploadControllerGetPresignedUrl } from "@/src/api/seek-api/upload";

type UploadFileProps = {
  uri: string,
  mimeType: string,
  name: string,
  folder: "public" | "private",
  access_token?: string
};

export async function uploadFile({ uri, mimeType, name, folder, access_token }: UploadFileProps) {
  const response = await fetch(uri);
  const blob = await response.blob();
  const data = await uploadControllerGetPresignedUrl({
    fileType: mimeType,
    filename: name,
    folder: folder,
  }, {
    headers: {
      Authorization: access_token && `Bearer ${access_token}`
    }
  });
  await fetch(data.uploadUrl, {
    method: "PUT",
    body: blob,
    headers: {
      "Content-Type": mimeType,
    },
  });
  return data;
}
