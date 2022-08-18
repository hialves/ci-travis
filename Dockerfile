FROM node:16-alpine
EXPOSE 3000
RUN mkdir /app
WORKDIR /app

COPY package.json /app/

RUN npm install

COPY . /app/

CMD node index.js