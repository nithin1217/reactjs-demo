# ---------- Stage 1 : Node app ----------
FROM node:21.6.1 AS app

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# ---------- Stage 2 : Nginx ----------
FROM nginx:alpine

RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY --from=app /app /app
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD sh -c "npm start & nginx -g 'daemon off;'"
