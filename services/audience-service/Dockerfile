FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/

CMD [ "node", "/app/index.js" ]
