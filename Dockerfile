FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"

WORKDIR /
RUN npm install -g create-react-native-app \
 && create-react-native-app app \
 && ln -s /usr/bin/nodejs /usr/bin/node
WORKDIR /app

VOLUME /app
EXPOSE 19000

CMD [ "npm", "start" ]
