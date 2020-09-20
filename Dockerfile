FROM php:7.4

RUN apt-get update -y && \ 
    apt-get install -y wget

COPY . /usr/src/app

WORKDIR /usr/src/app


EXPOSE 80

CMD php -S 0.0.0.0:80 -t web/

