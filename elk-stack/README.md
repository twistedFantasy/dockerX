# ELK-Stack
"ELK" is the acronym for three open source projects: Elasticsearch, Logstash, and Kibana.
Elasticsearch is a search and analytics engine. Logstash is a server‑side data processing
pipeline that ingests data from multiple sources simultaneously, transforms it, and then
sends it to a "stash" like Elasticsearch. Kibana lets users visualize data with charts
and graphs in Elasticsearch.

Useful resources:<br/>
https://www.elastic.co/what-is/elk-stack

# Dip your hands in the work

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

### Docker-Compose
Start all docker-compose services
```
docker-compose -f docker-compose.yml up -d
```

Load Nginx multiple times to generate some logs
```
http://192.168.56.101:80/
```

Open Kibana in browser
```
http://192.168.56.101:5601/
```

Go to "Logs" tab and query nginx logs: "container.labels.com_docker_compose_service : nginx"
![Alt text](./kibana.png?raw=true "Kibana")

Stop all docker-compose services
```
docker-compose -f docker-compose.yml stop
```
Delete all docker-compose services and volume
```
docker-compose -f docker-compose.yml down -v
```

### Docker Swarm
Activate docker swarm
```
docker swarm init --advertise-addr 192.168.56.101
```

Deploy docker-compose services into docker swarm
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

### Useful resources:
[Medium ELK stack example](https://medium.com/@sece.cosmin/docker-logs-with-elastic-stack-elk-filebeat-50e2b20a27c6)
