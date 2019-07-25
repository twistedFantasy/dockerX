Increase vm.max_map_count value
```
sudo sysctl -w vm.max_map_count=262144
```

Local development
```
docker-compose -f docker-compose.yml up -d
```

Docker Swarm
```
docker stack deploy --with-registry-auth -c=docker-stack-base.yml -c=docker-stack-develop.yml twistedfantasy-elasticsearch
```

[Elasticsearch docker image on docker hub](https://hub.docker.com/_/elasticsearch)
