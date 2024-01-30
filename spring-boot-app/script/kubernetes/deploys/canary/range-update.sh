#!/bin/bash

k='minikube kubectl --'

format_weight_json_str() {
    local ratio=$1
    echo "{\"metadata\":{\"annotations\":{\"nginx.ingress.kubernetes.io/canary-weight\":\"$ratio\"}}}"
}

ratio_list=(10 25 50 100)

for ratio in "${ratio_list[@]}"
do
   echo "current deploy's ratio is $ratio"
   $k patch ingress canary-deploy -p $(format_weight_json_str $ratio)
   sleep 4
done
