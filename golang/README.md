Build simple dockerfile
```
docker build --build-arg IMAGE="golang:1.13.4" -f Dockerfile -t "twistedfantasy:golang"
```

Build multi-stage dockerfile
``` 
docker build --build-arg BUILDER_IMAGE="golang:1.13.4" --build-arg IMAGE="alpine:3.10.3" -f Dockerfile.multi-stage -t "twistedfantasy:golang-multi-stage" .
```

Docker images: <br/>
* [golang](https://hub.docker.com/_/golang)
* [alpine](https://hub.docker.com/_/alpine)
