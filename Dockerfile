FROM debian:buster

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y nginx
RUN apt install -y php
RUN apt install -y mariadb-server
RUN apt install -y wget
RUN apt install -y composer
RUN apt install -y php-fpm
RUN apt install -y php-mysqlnd

ENV MYSQL_USER='admin'
ENV MYSQL_PASSWORD='password'

ADD  ./srcs /srcs

EXPOSE 80 443

WORKDIR /srcs

ENTRYPOINT /srcs/init.sh
