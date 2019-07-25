ARG IMAGE
FROM $IMAGE
LABEL maintainer="Denis Sventitsky <denis.sventitsky@gmail.com> / Twisted Fantasy <twisteeed.fantasy@gmail.com>"

COPY mariadb.cnf /etc/mysql/conf.d/mariadb.cnf
RUN chmod 664 /etc/mysql/conf.d/mariadb.cnf  # Warning: World-writable config file '/etc/mysql/conf.d/mariadb.cnf' is ignored

CMD ["mysqld"]
