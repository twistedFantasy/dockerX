Docker Registry HTTP API V2 is used for storing your docker images outside of official [docker hub](https://hub.docker.com/)
in your own copy of this service on your hardware maintainable with care and love :)

### Local Development
1/ Start registry

```
$ docker-compose -f docker-compose.yml up -d
Creating volume "registry_registry-data" with default driver
Creating registry_registry_1 ... done
```

2/ Check that registry is up and running
```
$ docker-compose -f docker-compose.yml ps
       Name                      Command               State           Ports
-------------------------------------------------------------------------------------
registry_registry_1   /entrypoint.sh /etc/docker ...   Up      0.0.0.0:5000->5000/tcp
```

3/ Use registry from within Docker
```
$ docker pull alpine
$ docker tag alpine localhost:5000/alpine
$ docker push localhost:5000/alpine
$ docker pull localhost:5000/alpine
```

4/ Stop registry
```
$ docker-compose -f docker-compose.yml stop
Stopping registry_registry_1 ... done
```

5/ Delete created containers, networks & volumes
```
$ docker-compose -f docker-compose.yml down -v
Stopping registry_registry_1 ... done
Removing registry_registry_1 ... done
Removing network registry_network
Removing volume registry_registry-data
```

### Docker Swarm

1/ Create [docker swarm](../readme/DOCKER_SWARM.md)

2/ Deploy services in docker swarm
```
$ docker stack deploy -c docker-stack.yml twistedfantasy-registry
Creating network twistedfantasy-registry_network
Creating service twistedfantasy-registry_registry
```

3/ Check list of stacks
```
$ docker stack ls
NAME                      SERVICES            ORCHESTRATOR
twistedfantasy-registry   1                   Swarm
```

4/ Check the list of tasks in the stack
```
$ docker stack ps twistedfantasy-registry
ID                  NAME                                 IMAGE               NODE                DESIRED STATE       CURRENT STATE                ERROR               PORTS
t14gg9t661eh        twistedfantasy-registry_registry.1   registry:2.7.1      dekabrist           Running             Running about a minute ago
```

5/ Check list of services in the stack
```
$ docker stack services twistedfantasy-registry
ID                  NAME                               MODE                REPLICAS            IMAGE               PORTS
cwqjeliyls1w        twistedfantasy-registry_registry   replicated          1/1                 registry:2.7.1      *:5000->5000/tcp
```

6/ Check logs of registry service
```
$ docker service logs -f twistedfantasy-registry_registry
```

7/ Use registry from within Docker
```
$ docker pull alpine
$ docker tag alpine 127.0.0.1:5000/alpine
$ docker push 127.0.0.1:5000/alpine
$ docker pull 127.0.0.1:5000/alpine
```

8/ Bring the stack down
```
$ docker stack rm twistedfantasy-registry
```

9/ Leave [docker swarm](../readme/DOCKER_SWARM.md)

### Useful resources: <br/>
* [Docker Registry Overview](https://docs.docker.com/registry/)
* [Image on docker hub](https://hub.docker.com/_/registry)
* [Docker Distribution github](https://github.com/docker/distribution)
