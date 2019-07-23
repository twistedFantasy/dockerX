```
docker stack deploy --with-registry-auth -c=docker-stack-base.yml -c=docker-stack-develop.yml $CI_PROJECT_NAMESPACE-$SERVICE_NAME

docker-compose -f docker-compose-local.yml up -d
```

[Portainer docker image](https://hub.docker.com/r/portainer/portainer)
