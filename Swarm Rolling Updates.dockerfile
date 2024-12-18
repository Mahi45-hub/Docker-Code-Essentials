
docker service create \
 --replicas 3 \
 --public 8000:80 \
 --name nginx \
 --update-parallelism 1 \
 --update-delay 10s \
 --docker image name
 

docker node update --label-add ssd=yes node2
docker node update --label-add ssd=yes node3
docker node update --label-add hdd=yes node4
docker node update --label-add hdd=yes node5

docker service create --name SSD-APP --constraint node.labels.ssd==yes --publish 9000:80  --replicas 6 docker image name

docker service create --name HDD-APP --constraint node.labels.hdd==yes --publish 6000:80  --replicas 6 docker image name


docker service create --name HDD-APP --constraint node.labels.hdd==yes --publish 6000:80 --replicas 6 docker image name

docker service create --name TESTING1 --constraint=node.role==manager -p 5000:80 --replicas 3 nginx

docker service create --name TESTING2 -p 5000:80 --constraint=node.role!=manager --replicas 4 docker image name

docker node update --label-add dev=true node2
docker node update --label-add dev=true node3
docker node update --label-add prod=true node4
docker node update --label-add prod=true node5

docker service create --name DEVNGINX --publish 7000:80 --constraint=node.labels.dev==true --replicas 4 nginx

docker service create --name PRODNGINX --publish 5000:80 --constraint=node.labels.prod==true --replicas 4 nginx
