.gitlab-ci.yml
```
image: docker:18.09.3

variables:
  DOCKER_DRIVER: overlay2
  DOCKER_IMAGE: docker:18.09.3
  MYSQL_IMAGE: mysql:5.7
  FTP_IMAGE: stilliard/pure-ftpd:hardened

services:
  - docker:dind

stages:
  - build
  - deploy

deploy:
  <<: *docker_login
  stage: deploy
  dependencies: []
  variables:
    DOCKER_HOST: tcp://X.X.X.X:2375
  image: "$DOCKER_IMAGE"
  script:
    - env MYSQL_IMAGE=${MYSQL_IMAGE} FTP_IMAGE=${FTP_IMAGE} docker stack deploy --with-registry-auth -c=docker-stack.yml test
  only:
    - master
```

or
```
version: "3.6"
services:
  one:
    image: "nginx:alpine"
    environment:
      SOME_VAR:
      
```
Now, deploy the stack using either:
``` 
export SOME_VAR=some-value
docker stack deploy -c docker-compose.yml foobar
```
or
```
 export $(cat .env) && docker stack deploy -c docker-compose.yml foobar
```

Links:
https://github.com/docker/cli/issues/939