import axios, { AxiosError, AxiosRequestConfig, AxiosResponse } from "axios";
import { useAuth } from "@/src/store/auth-store";
import { ErrorDto } from "../api/seek-api/model";

export type ErrorType<E> = AxiosError<E>;

export const AXIOS_INSTANCE = axios.create({
  baseURL: process.env.EXPO_PUBLIC_API_URL || "http://localhost:3000",
  headers: {
    platform: "mobile",
  },
});

AXIOS_INSTANCE.interceptors.request.use((config) => {
  const { _hasHydrated, accessToken } = useAuth.getState();
  if (!_hasHydrated) {
    console.error("[ERROR] attempt to access auth state before hydration");
    return config;
  }
  if (accessToken) {
    config.headers.Authorization = `Bearer ${accessToken}`;
  }
  console.log("[LOG] starting request");
  return config;
});

AXIOS_INSTANCE.interceptors.response.use(
  (resp) => {
    console.log("[LOG] request successful", resp.status);
    return resp;
  },
  (error) => {
    const { message, status } = error as ErrorType<ErrorDto>;
    console.log("[LOG] request failed", status, message);
    if (error.status === 401) {
      console.log("[LOG] authentication error, logging out");
      useAuth.getState().logout();
    }
    return error;
  },
);

export interface CustomResponse<T> {
  data: T;
  status: number;
  headers: any;
}

export const customInstance = async <T>(
  config: AxiosRequestConfig,
  options?: AxiosRequestConfig,
): Promise<AxiosResponse<T>> => {
  return await AXIOS_INSTANCE({
    ...config,
    ...options,
  });
};
