
Docker container healthchecks
https://blog.sixeyed.com/docker-healthchecks-why-not-to-use-curl-or-iwr/

HEALTHCHECK CMD curl --fail http://localhost:3000/ || exit 1

docker inspect --format='{{json .State.Health}}' your-container-name


docker service logs NGINX
docker service logs wza88dx6v4pr
docker service logs wza88dx6v4pr --no-task-ids
docker service logs --raw --no-trunc wza88dx6v4pr
docker service logs --raw --no-task-ids --no-trunc wza88dx6v4pr
docker service logs --tail 10 --follow --raw --no-trunc NGINX
