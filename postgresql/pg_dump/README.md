1. Create MySQL(5.7.14) database dump using docker container
```
$ docker run --rm \
  --network=${STACK}_${NETWORK} \
  -v ${STACK}_${BACKUP_VOLUME}:/var/backups \
  -e PGPASSWORD=${POSTGRES_PASSWORD} \
  postgres:9.6-alpine \
  pg_dump \
  -h ${HOST} -U ${POSTGRES_USER} -f /var/backups/backup.sql \
  ${POSTGRES_DB}
```

Links:<br/>
[Docker Postgres](https://hub.docker.com/_/postgres)
