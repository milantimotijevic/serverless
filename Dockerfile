FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g serverless

EXPOSE 4569

CMD ["serverless", "offline"]
