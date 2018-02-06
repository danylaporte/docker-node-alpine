FROM node:alpine
LABEL maintainer="Dany Laporte"

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    apk add --no-cache add --virtual native-deps \
    g++ gcc libgcc libstdc++ linux-headers make python && \
    npm install --quiet node-gyp -g && \
    npm install --quiet && \
    apk del native-deps
