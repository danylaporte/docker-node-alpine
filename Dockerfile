FROM node:alpine
LABEL maintainer="Dany Laporte"

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh