FROM node:12.2.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run test

COPY . .

EXPOSE 80

CMD ["node", "app.js"]

