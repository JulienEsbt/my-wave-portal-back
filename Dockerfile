FROM node:18-alpine

WORKDIR /app
COPY package.json /app
COPY package-lock.json /app

RUN npm install
COPY . /app

RUN npx hardhat compile

CMD npx hardhat run scripts/deploy.js --network rinkeby