# SOURCE: https://github.com/jonboiser/dockerized-kiwix-server
FROM ubuntu:25.10

RUN apt-get update
RUN apt-get install -y wget git

VOLUME /zims

WORKDIR /

COPY ./scripts ./scripts
RUN ./scripts/provision.sh

EXPOSE 8080

ENTRYPOINT ["./scripts/entrypoint.sh"]