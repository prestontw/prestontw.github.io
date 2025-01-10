/** @type {import('tailwindcss').Config} */

export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      colors: {
        accent: "#2337ff",
        "gray-light": "rgba(229, 233, 240, 50%)",
        "gray-dark": "rgb(34, 41, 57)",
        black: "rgb(15, 18, 25)",
        gray: "rgb(96, 115, 159)",
      },
    },
  },
  plugins: [],
};
