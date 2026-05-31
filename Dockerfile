FROM node:alpine
WORKDIR /app

RUN npm install 
RUN npm build

COPY . .

EXPOSE 3000
CMD ["node", "index.js"]