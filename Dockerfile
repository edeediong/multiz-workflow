FROM alpine:3.12

WORKDIR /app

COPY src/install.sh .

RUN apk update && apk install rsync grsync git

RUN ./install.sh
