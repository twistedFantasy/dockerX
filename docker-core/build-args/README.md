  - docker build --build-arg IMAGE="certbot/certbot" --build-arg BRANCH=${CI_COMMIT_REF_SLUG} -f dockerX/certbot/Dockerfile --pull -t "$CI_REGISTRY_IMAGE/certbot:$CI_COMMIT_REF_SLUG" .

Links:
https://docs.docker.com/engine/reference/builder/#arg
https://vsupalov.com/docker-env-vars/