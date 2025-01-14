# 1) Node 이미지를 기반으로 한다. (버전은 상황에 맞게 선택)
FROM node:22-alpine

# 2) 컨테이너 내부 작업 디렉토리 지정
WORKDIR /app

# 3) package.json, package-lock.json 복사 후 의존성 설치
COPY package*.json ./
RUN npm install

# 4) 나머지 소스 코드 복사
COPY . /app

# RUN npm run build

# Vite 개발 서버는 보통 5173 포트
EXPOSE 5173

# 예시: 개발 모드로 컨테이너를 띄울 경우
CMD ["npm", "run", "dev"]