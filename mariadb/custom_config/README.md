``` 
docker build --build-arg IMAGE="mariadb:10.4.6-bionic" -f Dockerfile -t "twistedfantasy:mariadb" .
docker run -d "twistedfantasy:mariadb"

OR

docker-compose -f docker-compose up -d
```
