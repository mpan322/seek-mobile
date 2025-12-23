module.exports = {
  'seek-api': {
    input: './swagger.json', // Or your URL
    output: {
      target: './src/api/generated.ts',
      client: 'react-query',
      httpClient: 'axios',
      baseUrl: 'https://localhost:3000/',
    },
  },
};
