Create new virtual machine with Vagrant
```
vagrant up
vagrant ssh
cd /vagrant_data/
```

Increase vm.max_map_count value
```
sudo sysctl -w vm.max_map_count=262144
```

Activate docker swarm
```
docker swarm init --advertise-addr 192.168.56.101
```

```
docker stack deploy -c docker-stack-elk.yml dockerX-elk
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
docker service logs -f dockerX-elk_elasticsearch
```

Open Kibana in browser
```
http://192.168.56.101:5601/
```

Delete a stack
``` 
docker stack rm dockerX-elk
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
