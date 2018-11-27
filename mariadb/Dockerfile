FROM mariadb:10.3.9
LABEL maintainer="Twisted Fantasy <twisteeed.fantasy@gmail.com>"

EXPOSE 3306

COPY mariadb/mariadb.cnf /etc/mysql/conf.d/mariadb.cnf
RUN chmod 664 /etc/mysql/conf.d/mariadb.cnf  # Warning: World-writable config file '/etc/mysql/conf.d/mariadb.cnf' is ignored

CMD ["mysqld"]
