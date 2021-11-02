FROM ubuntu:latest

MAINTAINER RAHUL SIL <rahul.official.150@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
    apt-get install apache2 php net-tools -y

WORKDIR /var/www/html

COPY index.php  .

ENTRYPOINT ["apache2ctl", "-DFOREGROUND"]
