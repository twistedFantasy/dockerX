Ubuntu/Debian
docker build --build-arg IMAGE="ubuntu:19.04" -f cron/Dockerfile.ubuntu -t "twistedfantasy:cron" .
docker run --rm --name "cron" "twistedfantasy:cron"

Alpine
docker build --build-arg IMAGE="python:2-alpine3.7" -f cron/Dockerfile.alpine -t "twistedfantasy:cron" .
docker run --rm --name "cron" "twistedfantasy:cron"
