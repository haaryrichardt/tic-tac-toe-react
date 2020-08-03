FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --silent

COPY . .

RUN npm run --silent build

CMD [ "npm", "run", "serve" ]
