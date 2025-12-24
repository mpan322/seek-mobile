import { defineConfig } from 'orval';

export default defineConfig({
  'seek-api': {
    input: './swagger.json',
    output: {
      mode: "tags",
      schemas: "src/api/model",
      target: "src/api/seek-api.ts",
      client: "react-query",
    },
  },
});
