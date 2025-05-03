import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import netlifyPlugin from "@netlify/vite-plugin-react-router";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), netlifyPlugin()],
  css: {
    modules: {
      scopeBehaviour: "local", // default
      generateScopedName: "[local]__[hash:base64:5]", // same as Next.js default
    },
    postcss: "./postcss.config.js",
  },
});
