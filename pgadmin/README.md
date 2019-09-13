[pgAdmin](https://www.pgadmin.org/) is the most popular and feature rich Open Source administration and development platform for
PostgreSQL, the most advanced Open Source database in the world.

Local development
```
docker-compose -f docker-compose.yml up -d
```

Docker Swarm
```
docker stack deploy --with-registry-auth -c=docker-stack.yml twistedfantasy-pgadmin
```

pgAdmin in docker container:</br>
[pgAdmin in container](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html)</br>
[docker hub](https://hub.docker.com/r/dpage/pgadmin4)
