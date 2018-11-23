docker build --build-arg IMAGE="ubuntu" -f forever_running/Dockerfile -t "twistedfantasy:forever_running" .
docker run -d --rm --name "forever_running" "twistedfantasy:forever_running"
docker run -ti --rm --name "forever_running" "twistedfantasy:forever_running" bash
