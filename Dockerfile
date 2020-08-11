FROM alpine:3.12

WORKDIR /app

COPY src/install.sh .

RUN ./install.sh
