FROM node:10
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY app ./   # copy only the app folder
EXPOSE 8080
CMD ["node", "server.js"]
