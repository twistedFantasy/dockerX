```
  export PHP_APACHE_IMAGE=php:7.1.27-apache-jessie
  docker build --build-arg IMAGE=${PHP_APACHE_IMAGE} -f /Dockerfile --pull -t "$CI_REGISTRY_IMAGE/test:$CI_COMMIT_REF_SLUG" ./
  docker push "$CI_REGISTRY_IMAGE/test:$CI_COMMIT_REF_SLUG"
```
