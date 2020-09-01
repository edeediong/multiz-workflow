FROM alpine:3.12

WORKDIR /app

COPY src/* ./

RUN apk update && apk add --no-cache rsync=3.1.3-r3 git=2.26.2-r0

RUN ./prep.sh

RUN ./obtain_genome.sh

ENTRYPOINT [ "/bin/sh" ]

CMD [ "cat", "DEF" ]