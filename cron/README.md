docker build --build-arg IMAGE="ubuntu:19.04" -f cron/Dockerfile -t "twistedfantasy:cron" .
docker run --rm --name "cron" "twistedfantasy:cron"
