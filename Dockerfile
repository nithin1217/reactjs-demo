FROM node:21.6.1

WORKDIR app

COPY package*.json ./

RUN npm install

RUN npm run test

COPY . .

EXPOSE 80

CMD ["npm", "start"]

