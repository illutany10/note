import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

export default defineConfig({
  plugins: [svelte()],
  server: {
    host: '0.0.0.0',  // Docker 컨테이너 외부 접근 허용
    watch: {
      usePolling: true  // Docker 볼륨 마운트에서의 HMR을 위한 설정
    }
  }
})