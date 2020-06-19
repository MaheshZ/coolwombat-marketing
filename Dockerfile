FROM node:10-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build
RUN yarn global add serve
ENTRYPOINT ["serve", "-s", "build"]