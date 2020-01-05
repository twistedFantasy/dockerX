Local development
```
docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose-management.yml up -d
```

Docker Swarm
```
docker stack deploy --with-registry-auth -c=docker-stack.yml twistedfantasy-rabbitmq
docker stack deploy --with-registry-auth -c=docker-stack-management.yml twistedfantasy-rabbitmq-management
```

[Image on docker hub](https://hub.docker.com/_/rabbitmq)
