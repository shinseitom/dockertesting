FROM python:3.9

MAINTAINER ShinseiTom


RUN mkdir -p testing
COPY test.sh /testing
WORKDIR /testing

RUN ls
RUN chmod +x test.sh
RUN ls
RUN ./go.sh

VOLUME ["/testing"]

CMD ./go.sh
