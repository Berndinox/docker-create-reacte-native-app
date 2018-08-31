FROM node:alpine
MAINTAINER Bernd KLAUS "https://berndklaus.at"

WORKDIR /
RUN create-react-native-app app
WORKDIR /app

VOLUME /app
EXPOSE 19000

CMD [ "npm", "start" ]
