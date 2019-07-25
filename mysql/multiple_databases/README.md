``` 
docker build --build-arg IMAGE="mysql:8.0.17" -f Dockerfile -t "twistedfantasy:mysql" .
docker run -d "twistedfantasy:mysql"

OR

docker-compose -f docker-compose up -d
```
