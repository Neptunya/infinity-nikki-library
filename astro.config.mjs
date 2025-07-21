import { defineConfig } from 'astro/config';
import react from '@astrojs/react';
import remarkMath from 'remark-math';
 import rehypeKatex from 'rehype-katex';

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
  markdown: {
     remarkPlugins: [remarkMath],
     rehypePlugins: [rehypeKatex],
   },
  redirects: {
    "/resources/styling-challenge-scoring/": "/guides/styling-challenge-scoring/",
    "/tools/styling-challenge-scoring/": "/tools/resonance-calculator/",
    "/resources/resonance-calculator/": "/tools/resonance-calculator/",
    "/resources/": "/guides/"
  }
});
