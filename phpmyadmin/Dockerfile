ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

EXPOSE 80
EXPOSE 443

RUN mkdir -p /usr/share/nginx/html/letsencrypt

ENV NGINX_CONFIG_PATH=/etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
COPY conf.d/* $NGINX_CONFIG_PATH
