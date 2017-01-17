FROM ubuntu

ENV USER root

RUN apt-get update \
    && apt-get install -y apache2 php php-mbstring php-xml \
               sqlite3 php-sqlite3 php-gd curl unzip libapache2-mod-php

ADD http://basercms.net/packages/download/basercms/latest_version baserCMS.zip
WORKDIR /var/www/html
RUN unzip /baserCMS.zip \
    && chown -R www-data:www-data basercms \
    && a2enmod rewrite \
    && echo '<Directory /var/www/html/basercms>' >> /etc/apache2/apache2.conf \
    && echo '    AllowOverride All' >> /etc/apache2/apache2.conf \
    && echo '</Directory>' >> /etc/apache2/apache2.conf

COPY run.sh /run.sh

EXPOSE 80
CMD ["/run.sh"]
