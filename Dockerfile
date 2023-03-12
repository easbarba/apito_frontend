FROM node:16-alpine
MAINTAINER EAS Barbosa <easbarba@outlook.com>
WORKDIR /app
COPY package.json package-lock.json .
RUN npm install
COPY . .
CMD ["npx", "vitest", "--run"]
