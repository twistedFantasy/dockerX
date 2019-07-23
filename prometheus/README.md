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

### Docker-Compose
```
docker-compose -f docker-stack-monitoring.yml \
 -f docker-stack-exporters.yml -f docker-stack-db.yml \
 -f docker-stack-common.yml -f docker-compose.yml up -d
```

### Docker Swarm
Build docker images
``` 
docker build --build-arg BRANCH="develop" -f prometheus/Dockerfile -t "dockerx-prometheus" .
docker build -f alertmanager/Dockerfile -t "dockerx-alertmanager" .
docker build -f grafana/Dockerfile -t "dockerx-grafana" .

docker build -f nginx/Dockerfile -t "dockerx-nginx" .
```

Activate docker swarm
```
docker swarm init --advertise-addr 192.168.56.101
```

```
docker stack deploy --with-registry-auth -c docker-stack-monitoring.yml \
 -c docker-stack-exporters.yml -c docker-stack-db.yml \
 -c docker-stack-common.yml dockerX-monitoring
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

# Issues
Grafana provision mechanism doesn't work very stable. For example, we added 2 dashboards and deployed them. Then 
we want to update 1 of already existing dashboards or add a new one, in this case grafana will not make automatic provision
during next grafana container start. To force this you need to delete this grafana service/container and volume.

# Useful resources
``` 
https://awesome-prometheus-alerts.grep.to/ --- very good resource with huge amount of configuration examples
https://prometheus.io/docs/instrumenting/exporters/ --- custom official and non official exporters
```

## Prometheus

#### Exporters
[CAdvisor Exporter](https://github.com/google/cadvisor)<br/>
[Node Exporter](https://github.com/prometheus/node_exporter)<br/>
[Nginx Exporter](https://github.com/nginxinc/nginx-prometheus-exporter)<br/>
[Postgres Exporter](https://github.com/wrouesnel/postgres_exporter)<br/>
[ElasticSearch Exporter](https://github.com/justwatchcom/elasticsearch_exporter)<br/>
[Redis Exporter](https://github.com/oliver006/redis_exporter)<br/>
[RabbitMQ Exporter](https://github.com/kbudde/rabbitmq_exporter)<br/>
[JVM Micrometer Exporter](https://dzone.com/articles/monitoring-using-spring-boot-2-prometheus-and-graf)<br/>

## Grafana

#### Basic information
[Provisioning](https://grafana.com/docs/administration/provisioning/)<br/>
[Prometheus Datasource](https://grafana.com/docs/features/datasources/prometheus/)<br/>

#### Dashboards
[CAdvisor Dashboard](https://grafana.com/grafana/dashboards/8321)<br/>
[Node Dashboard](https://grafana.com/dashboards/1860)<br/>
[Postgres Dashboard](https://grafana.com/dashboards/3742)<br/>
[ElasticSearch Dashboard](https://github.com/justwatchcom/elasticsearch_exporter/blob/master/examples/grafana/dashboard.json)<br/>
[Redis Dashboard](https://grafana.com/dashboards/763)<br/>
[RabbitMQ Dashboard](https://grafana.com/dashboards/4279)<br/>
[JVM Micrometer Dashboard](https://grafana.com/grafana/dashboards/4701/revisions)<br/>
