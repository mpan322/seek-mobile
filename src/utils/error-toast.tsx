import { InterfaceToastProps } from "@gluestack-ui/core/lib/esm/toast/creator/types";
import { ErrorDto } from "../api/seek-api/model";
import { ErrorToast } from "@/components/custom/error-toast";

type ErrorToastProps = {
  toast: {
    show: (props: InterfaceToastProps) => string;
    close: (id: string) => void;
    closeAll: () => void;
    isActive: (id: string) => boolean;
  },
  data?: ErrorDto,
}

export function errorToast({ toast, data }: ErrorToastProps) {
  toast.show({
    placement: "top",
    render: (props) => <ErrorToast {...props} error={data} />
  });
}
