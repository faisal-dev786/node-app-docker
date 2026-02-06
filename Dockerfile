#1 base image os for node app
FROM node:18-alpine

#2 working directory for the app
WORKDIR /app

#3 copy code from host to container
COPY index.js index.js
COPY package.json package.json

#4 run the command
RUN npm i

EXPOSE 9000

#5 serve this app
CMD ["node", "index.js"]
