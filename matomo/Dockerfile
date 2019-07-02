ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

RUN a2enmod rewrite
RUN a2enmod ssl

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY global.ini.php /usr/src/piwik/config/global.ini.php
