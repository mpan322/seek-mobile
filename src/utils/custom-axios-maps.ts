import axios, { AxiosError, AxiosRequestConfig, AxiosResponse } from "axios";

export type ErrorType<E> = AxiosError<E>;
export interface CustomResponse<T> {
  data: T;
  status: number;
  headers: any;
}

export const AXIOS_INSTANCE = axios.create({
  params: {
    key: process.env.EXPO_PUBLIC_GOOGLE_PLACES_API_KEY,
  },
});

AXIOS_INSTANCE.interceptors.request.use((config) => {
  console.log("[LOG] making maps request");
  return config;
});

AXIOS_INSTANCE.interceptors.response.use(
  (res) => {
    console.log("[LOG] completed maps request", res);
    return res;
  },
  (error) => {
    console.log("[LOG] failed maps request", JSON.stringify(error));
    return error;
  },
);

export const customInstance = async <T>(
  config: AxiosRequestConfig,
  options?: AxiosRequestConfig,
): Promise<AxiosResponse<T>> => {
  return await AXIOS_INSTANCE({
    ...config,
    ...options,
  });
};
