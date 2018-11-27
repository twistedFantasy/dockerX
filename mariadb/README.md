docker stack deploy --with-registry-auth -c=mongodb/docker-stack-base.yml -c=mongodb/docker-stack-develop.yml $CI_PROJECT_NAMESPACE-$SERVICE_NAME

docker-compose -f docker-compose-local.yml up -d
