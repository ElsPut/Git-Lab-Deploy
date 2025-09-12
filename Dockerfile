FROM node:10
WORKDIR /app
COPY package*.json ./app/
WORKDIR /app/app
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
