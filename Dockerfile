FROM node:16-alpine


WORKDIR /usr/cache

COPY package*.json ./

RUN npm install

WORKDIR /usr/app

USER node

COPY --chown=node:node . /usr/app
