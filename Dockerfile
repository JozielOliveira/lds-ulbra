FROM node:alpine

WORKDIR /project

COPY ./public /project/public
COPY ./package.json /project
COPY ./node_modules /project/node_modules

COPY ./entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash \
  && chmod +x /entrypoint.sh \
  && npm set progress=false \
  && npm install -g yarn gatsby-cli

EXPOSE 9000

ENTRYPOINT [ "/entrypoint.sh" ]