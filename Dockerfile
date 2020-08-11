FROM alpine:3.12

WORKDIR /app

COPY src/install.sh .

RUN apk update && apk add rsync git

RUN ./install.sh
