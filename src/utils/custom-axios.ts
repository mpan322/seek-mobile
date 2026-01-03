import axios, { AxiosRequestConfig } from "axios";
import { useAuth } from "@/src/store/auth-store";

export const AXIOS_INSTANCE = axios.create({
  baseURL: process.env.EXPO_PUBLIC_API_URL || "http://localhost:3000",
});

AXIOS_INSTANCE.interceptors.request.use((config) => {
  const { _hasHydrated, accessToken } = useAuth.getState();
  if (_hasHydrated) {
    console.error("[ERROR] attempt to access auth state before hydration");
    return config;
  }
  if (accessToken) {
    config.headers.Authorization = `Bearer ${accessToken}`;
  }
  return config;
});

export const customInstance = async <T>(
  config: AxiosRequestConfig,
  options?: AxiosRequestConfig,
): Promise<T> => {
  console.log("[LOG] running custom instance request!");
  const { data } = await AXIOS_INSTANCE({
    ...config,
    ...options,
  });
  return data;
};
