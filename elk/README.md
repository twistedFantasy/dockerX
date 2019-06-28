Increase vm.max_map_count value
```
sudo sysctl -w vm.max_map_count=262144
```

Activate docker swarm
```
docker swarm init
```

```
docker stack deploy -c docker-stack-elk.yml test-elk
```

List of stacks
``` 
docker stack ls
```

List of available services
```
docker service ls
```

Get logs for a service
``` 
docker service logs -f test-elk_elasticsearch
```

Open Kibana in browser
```
http://localhost:5601/
```

Delete a stack
``` 
docker stack rm test-elk
```

Remove
- all stopped containers
- all networks not used by at least one container
- all images without at least one container associated to them
- all build cache
``` 
docker system prune --all
```

Delete elasticsearch volume
``` 
docker volume rm elk_elasticsearch-data
```

Deactivate docker swarm
``` 
docker swarm leave --force
```
