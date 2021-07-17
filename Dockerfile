FROM node:lts-alpine

# ENV http_proxy "http://proxy.esl.cisco.com:80"
# ENV https_proxy "http://proxy.esl.cisco.com:80"

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "start" ]
