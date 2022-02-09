FROM node:16-alpine

USER node

WORKDIR /app

COPY package*.json /app

RUN npm install

EXPOSE 5000

CMD ["npm", "run", "dev"]