FROM node:21.6.1

WORKDIR src/index

COPY package*.json ./

RUN npm install

RUN npm run test

COPY . .

EXPOSE 80

CMD ["npm", "start"]

