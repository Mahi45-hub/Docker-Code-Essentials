
	  Service Constraint:
	  docker service create --constraint=node.role==manager nginx
	  docker service create --constraint=node.role!=worker nginx
	  node.<label>=custom label
	  node.role=inbuult label
	  docker node update --label-add=dmz=true node2
          docker service create --constraint=node.labels.dmz==true nginx
