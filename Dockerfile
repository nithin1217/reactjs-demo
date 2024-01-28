FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run test

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

