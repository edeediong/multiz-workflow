FROM alpine:3.12

WORKDIR /app

COPY src/install.sh .

RUN apt-get update && apt-get install rsync grsync git

RUN ./install.sh
