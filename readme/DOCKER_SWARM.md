1/ Create a new swarm
```
$ docker swarm init
Swarm initialized: current node (5lfxaznz5k1ek926x768iio01) is now a manager.

To add a worker to this swarm, run the following command:

    docker swarm join --token SWMTKN-1-2zbcasx1yy6romz4hxdvygflhx2mp0sd05lnt0jiilqjhkeqqv-ccodr5u0kjqji5h45ihj44sty 192.168.1.187:2377

To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.
```

2/ Leave the swarm
```
$ docker swarm leave --force
Node left the swarm.
```

Useful resources: <br/>
[Docker Swarm](https://docs.docker.com/engine/swarm/)
