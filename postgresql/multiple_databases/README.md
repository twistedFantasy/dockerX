``` 
docker build --build-arg IMAGE="postgres:11.4" -f Dockerfile -t "twistedfantasy:postgres" .
docker run --env-file=test.env -d "twistedfantasy:postgres"

OR

docker-compose -f docker-compose up -d
```
