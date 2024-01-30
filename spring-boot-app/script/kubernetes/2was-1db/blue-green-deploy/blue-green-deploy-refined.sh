#!/bin/bash

k="minikube kubectl -- "

# deploy green
$k apply -f deploy-was-green.yml

# wait while deploying green
while true; do

    status=$($k get pods | grep deploy-was-green | awk '{print $3}')

    if [[ $status == "Running" ]]; then
        echo "Blue is Running!"
        break;
    fi;
    sleep 1;
done;

# delete blue traffic
$k delete svc svc-nodeport-blue

# allow green traffic
$k apply -f svc-nodeport-green.yml

# now, close blue traffic
$k delete deploy deploy-was-blue

# display blue's status
curl $(minikube ip):30000/actuator/health
echo ""
curl $(minikube ip):30000/version
