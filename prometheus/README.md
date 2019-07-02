# Dirty hands

Create new virtual machine with Vagrant
```
vagrant up
vagrant ssh
cd /vagrant_data/
```

Increase vm.max_map_count value for elasticsearch
```
sudo sysctl -w vm.max_map_count=262144
```

Build docker images
``` 
docker build -f prometheus/Dockerfile -t "dockerx-prometheus" .
docker build -f alertmanager/Dockerfile -t "dockerx-alertmanager" .
docker build -f grafana/Dockerfile -t "dockerx-grafana" .
```

Activate docker swarm
```
docker swarm init --advertise-addr 192.168.56.101
```

```
docker stack deploy -c docker-stack-monitoring.yml -c docker-stack-exporters.yml \
 -c docker-stack-db.yml -c docker-stack-common.yml dockerX-monitoring
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
docker service logs -f dockerX-monitoring_elasticsearch
```

Open Grafana in browser
```
http://192.168.56.101:3000/
```

Open Prometheus in browser
``` 
http://192.168.56.101:9090/
```

Delete a stack
``` 
docker stack rm dockerX-monitoring
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
docker volume rm dockerX-monitoring_grafana-data dockerX-monitoring_prometheus-data
```

Deactivate docker swarm
``` 
docker swarm leave --force
```

Delete vagrant virtual machine
```
vagrant halt
vagrant destroy
```

# Useful resources
``` 
https://awesome-prometheus-alerts.grep.to/ --- very good resource with huge amount of configuration examples
https://prometheus.io/docs/instrumenting/exporters/ --- custom official and non official exporters
```
