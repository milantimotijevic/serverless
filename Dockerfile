FROM node:17-alpine3.14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g serverless

EXPOSE 4569

CMD ["serverless", "offline"]
