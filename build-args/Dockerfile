ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

ARG BRANCH
ADD dockerX/certbot/crontab-$BRANCH /etc/crontabs/root
RUN mkdir -p /var/www/frontend/.well-known/

ENTRYPOINT []
CMD crond -f -L -
