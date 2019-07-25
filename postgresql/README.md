Local development
```
docker-compose -f docker-compose.yml up -d
```

Docker Swarm
```
docker stack deploy --with-registry-auth -c=docker-stack.yml twistedfantasy-postgresql
```

[PostgreSQL docker image on docker hub](https://hub.docker.com/_/postgres)
