What is [Memcached](https://memcached.org/)?
Free & open source, high-performance, distributed memory object caching system, generic in nature, 
but intended for use in speeding up dynamic web applications by alleviating database load.<br/>
Memcached is an in-memory key-value store for small chunks of arbitrary data (strings, objects) from 
results of database calls, API calls, or page rendering..<br/>
Memcached is simple yet powerful. Its simple design promotes quick deployment, ease of development,
and solves many problems facing large data caches. Its API is available for most popular languages.<br/>

### Local Development
1/ Start memcached

```
$ docker-compose -f docker-compose.yml up -d
Creating network "memcached_network" with the default driver
Pulling memcached (memcached:1.5.20-alpine)...
Creating memcached_memcached_1 ... done
```

2/ Check that memcached is up and running
```
$ docker-compose -f docker-compose.yml ps
        Name                       Command               State            Ports          
-----------------------------------------------------------------------------------------
memcached_memcached_1   docker-entrypoint.sh memcached   Up      0.0.0.0:11211->11211/tcp
```

3/ Use memcached
```
$ telnet localhost 11211
Trying ::1...
Connected to localhost.
Escape character is '^]'.

set Test 0 100 12
CUSTOM_VALUE
STORED
get Test
VALUE Test 0 12
CUSTOM_VALUE
END
replace Test 0 100 4
Temp
STORED
get Test
VALUE Test 0 4
Temp
END
stats items
STAT items:1:number 1
STAT items:1:number_hot 0
STAT items:1:number_warm 0
STAT items:1:number_cold 1
STAT items:1:age_hot 0
STAT items:1:age_warm 0
STAT items:1:age 29
STAT items:1:mem_requested 67
STAT items:1:evicted 0
STAT items:1:evicted_nonzero 0
STAT items:1:evicted_time 0
STAT items:1:outofmemory 0
STAT items:1:tailrepairs 0
STAT items:1:reclaimed 0
STAT items:1:expired_unfetched 0
STAT items:1:evicted_unfetched 0
STAT items:1:evicted_active 0
STAT items:1:crawler_reclaimed 0
STAT items:1:crawler_items_checked 1
STAT items:1:lrutail_reflocked 0
STAT items:1:moves_to_cold 2
STAT items:1:moves_to_warm 0
STAT items:1:moves_within_lru 0
STAT items:1:direct_reclaims 0
STAT items:1:hits_to_hot 0
STAT items:1:hits_to_warm 0
STAT items:1:hits_to_cold 2
STAT items:1:hits_to_temp 0
END
flush_all
OK
get Test
END
version
VERSION 1.5.20
quit
Connection closed by foreign host.
```

4/ Stop memcached
```
$ docker-compose -f docker-compose.yml stop
Stopping memcached_memcached_1 ... done
```

5/ Delete created containers, networks & volumes
```
$ docker-compose -f docker-compose.yml down -v
Removing memcached_memcached_1 ... done
Removing network memcached_network
```

### Docker Swarm

1/ Create [docker swarm](../readme/DOCKER_SWARM.md)

2/ Deploy memcached service in docker swarm
```
$ docker stack deploy -c docker-stack.yml twistedfantasy-memcached
Creating network twistedfantasy-memcached_network
Creating service twistedfantasy-memcached_memcached
```

3/ Check list of stacks
```
$ docker stack ls
NAME                       SERVICES            ORCHESTRATOR
twistedfantasy-memcached   1                   Swarm
```

4/ Check the list of tasks in the stack
```
$ docker stack ps twistedfantasy-memcached
ID                  NAME                                   IMAGE                     NODE                DESIRED STATE       CURRENT STATE            ERROR               PORTS
4frogha8ngy5        twistedfantasy-memcached_memcached.1   memcached:1.5.20-alpine   dekabrist           Running             Running 21 seconds ago
```

5/ Check list of services in the stack
```
$ docker stack services twistedfantasy-memcached
ID                  NAME                                 MODE                REPLICAS            IMAGE                     PORTS
n4yuy4u93pd7        twistedfantasy-memcached_memcached   replicated          1/1                 memcached:1.5.20-alpine   *:11211->11211/tcp
```

6/ Use memcached
```
$ telnet 127.0.0.1 11211
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.

set Test 0 100 12
CUSTOM_VALUE
STORED
get Test
VALUE Test 0 12
CUSTOM_VALUE
END
replace Test 0 100 4
Temp
STORED
get Test
VALUE Test 0 4
Temp
END
stats items
STAT items:1:number 1
STAT items:1:number_hot 0
STAT items:1:number_warm 0
STAT items:1:number_cold 1
STAT items:1:age_hot 0
STAT items:1:age_warm 0
STAT items:1:age 29
STAT items:1:mem_requested 67
STAT items:1:evicted 0
STAT items:1:evicted_nonzero 0
STAT items:1:evicted_time 0
STAT items:1:outofmemory 0
STAT items:1:tailrepairs 0
STAT items:1:reclaimed 0
STAT items:1:expired_unfetched 0
STAT items:1:evicted_unfetched 0
STAT items:1:evicted_active 0
STAT items:1:crawler_reclaimed 0
STAT items:1:crawler_items_checked 1
STAT items:1:lrutail_reflocked 0
STAT items:1:moves_to_cold 2
STAT items:1:moves_to_warm 0
STAT items:1:moves_within_lru 0
STAT items:1:direct_reclaims 0
STAT items:1:hits_to_hot 0
STAT items:1:hits_to_warm 0
STAT items:1:hits_to_cold 2
STAT items:1:hits_to_temp 0
END
flush_all
OK
get Test
END
version
VERSION 1.5.20
quit
Connection closed by foreign host.
```

8/ Bring the stack down
```
$ docker stack rm twistedfantasy-memcached
Removing service twistedfantasy-memcached_memcached
Removing network twistedfantasy-memcached_network
```

9/ Leave [docker swarm](../readme/DOCKER_SWARM.md)

### Useful resources: <br/>
* [hub.docker.com](https://hub.docker.com/_/memcached)
* [github.com](https://github.com/memcached/memcached)
* [official website](https://memcached.org/)
