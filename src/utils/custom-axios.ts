import axios, { AxiosError, AxiosRequestConfig, AxiosResponse } from "axios";
import { useAuth } from "@/src/store/auth-store";

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
  console.log("[LOG] custom axios interceptors request config:", config);
  return config;
});

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
