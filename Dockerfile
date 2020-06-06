FROM alpine:3.7

MAINTAINER Anil <kumarshresthaanil@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apk add --update bash

#RUN apk add node.js

RUN apk add --update nodejs nodejs-npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

COPY . /usr/apps/hello-docker/

COPY index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
