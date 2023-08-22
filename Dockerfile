FROM python:3.9

MAINTAINER ShinseiTom


RUN mkdir -p testing
COPY . /testing
WORKDIR /testing

RUN ls -ltra /testing
RUN chmod +x test.sh
RUN ls -ltra /testing
RUN ./test.sh

VOLUME ["/testing"]

CMD ./test.sh
