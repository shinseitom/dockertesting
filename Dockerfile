FROM python:3.9

MAINTAINER ShinseiTom


RUN mkdir -p testing
COPY . /testing
WORKDIR /testing

RUN ls
RUN chmod +x test.sh
RUN ls
RUN ./test.sh

VOLUME ["/testing"]

CMD ./test.sh
