FROM node:12

WORKDIR /code

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run sprites
RUN npm run icons
RUN npm run dev
