FROM node:12

RUN mkdir -p /home/gogogo
WORKDIR /home/gogogo
COPY . .

RUN npm install -g lambda-local



CMD lambda-local -l handler.js -h foo --watch 8008


