NODE AVAILABILITY:
================
docker node update  --availability pause node5 - Dont accept new tasks , runs existing.
docker node update  --availability active node5
docker node update  --availability drain node5 - Reschedule talsks

Resource Requirements:
====================
Limits: max

Reservations: min

docker service create --reserve-memory 800M --reserve-cpu 1 --name MEMCPUTEST1 --replicas 3 --publish 4000:80 docker image name

docker service create --name LIMITTEST --limit-cpu .25 --limit-memory 100M --replicas 3 --publish 3000:80 docker image name

docker service update LIMITTEST --limit-memory 10M --limit-cpu .10
docker service update LIMITTEST --limit-memory 0 --limit-cpu 0
docker service rm DEVNGINX LIMITTEST MEMCPUTEST1 PRODNGINX
docker service create --name CPULARGE2 --reserve-cpu 80 docker image name