FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -y install nginx

ADD default /etc/nginx/sites-enabled/

EXPOSE 80

CMD service nginx start && tail -f /var/log/nginx/access.log
