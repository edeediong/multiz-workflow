FROM alpine:3.12

WORKDIR /app

COPY src/* ./

RUN apk update && apk add --no-cache rsync git

RUN ./install.sh

RUN ./obtain.sh
