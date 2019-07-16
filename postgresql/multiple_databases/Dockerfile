ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

COPY postgresql.conf /etc/postgresql.conf
COPY create_dbs.sh /docker-entrypoint-initdb.d/create_dbs.sh

CMD ["-c", "config_file=/etc/postgresql.conf"]
