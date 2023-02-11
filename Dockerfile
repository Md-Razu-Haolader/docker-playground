FROM node:14-alpine

COPY . /app

WORKDIR /app

COPY package.json .

RUN yarn install


