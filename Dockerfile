
FROM ubuntu
RUN apt-get update
RUN apt-get install tzdata
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/New_York"
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name VINAY1512
