# Dev image for Next.js or plain React/Vite; here we use Node 20
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci || npm install
COPY . .
EXPOSE 3000
