#!/bin/bash

k='minikube kubectl --'

ratio_list=(10, 25, 50, 100)

for ratio in "${ratio_list[@]}"
do
   echo "current deploy's ratio is $ratio"
   $k patch ingress canary-deploy -p "{\"metadata\":{\"annotations\":{\"nginx.ingress.kubernetes.io/canary-weight\":\"$ratio\"}}}"
   sleep 5
done
