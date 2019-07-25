ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

COPY postgresql.conf /etc/postgresql.conf

CMD ["-c", "config_file=/etc/postgresql.conf"]
