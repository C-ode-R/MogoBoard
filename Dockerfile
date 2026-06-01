FROM node:22-alpine

RUN npm install -g bun

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install

COPY . .

EXPOSE 5173

CMD ["bun", "run", "dev", "--", "--host", "0.0.0.0"]
