
docker service create \
    --name traefik \
    --constraint=node.role==manager \
    --publish 80:80 \
    --publish 8080:8080 \
    --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
    --network traefik-net \
    traefik:v1.6 \
    --docker \
    --docker.swarmmode \
    --docker.domain=traefik \
    --docker.watch \
    --web


docker service create \
    --name webapp1 \
    --label traefik.port=80 \
    --network traefik-net \
    --label traefik.frontend.rule=Host:DNS Records alias to NLB
    docker image name
