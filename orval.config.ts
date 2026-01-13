import { defineConfig } from "orval";

export default defineConfig({
  "seek-api": {
    input: "./swagger.json",
    output: {
      mode: "tags",
      schemas: "src/api/seek-api/model",
      target: "src/api/seek-api/seek-api.ts",
      client: "react-query",
      override: {
        mutator: {
          path: "src/utils/custom-axios.ts",
          name: "customInstance",
        },
        header: () => ["import { AxiosError, AxiosResponse } from 'axios';"],
      },
    },
  },
  "maps-api": {
    input: "./google-maps-platform-openapi3.json",
    output: {
      baseUrl: "https://maps.googleapis.com",
      mode: "tags",
      schemas: "src/api/maps-api/model",
      target: "src/api/maps-api/maps-api.ts",
      client: "react-query",
      override: {
        mutator: {
          path: "src/utils/custom-axios-maps.ts",
          name: "customInstance",
        },
        header: () => ["import { AxiosError, AxiosResponse } from 'axios';"],
      },
    },
  },
});
