Local development
```
docker-compose -f docker-compose.yml up -d
```

Docker Swarm
```
docker stack deploy --with-registry-auth -c=docker-stack-base.yml -c=docker-stack-develop.yml twistedfantasy-mariadb
```

[MariaDB docker image on docker hub](https://hub.docker.com/_/mariadb)
