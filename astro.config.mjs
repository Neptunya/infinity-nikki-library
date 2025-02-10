import { defineConfig } from 'astro/config';
import react from '@astrojs/react';

// https://astro.build/config
export default defineConfig({
  integrations: [react()],
  vite: {
    optimizeDeps: {
      include: ['@mui/material', '@emotion/react', '@emotion/styled'],
    },
    ssr: {
      external: ['@mui/material', '@emotion/react', '@emotion/styled'],
    },
  },
  redirects: {
    "/resources/styling-challenge-scoring/": "/guides/styling-challenge-scoring/",
    "/tools/styling-challenge-scoring/": "/tools/resonance-calculator/",
    "/resources/resonance-calculator/": "/tools/resonance-calculator/",
    "/resources/": "/guides/"
  }
});
