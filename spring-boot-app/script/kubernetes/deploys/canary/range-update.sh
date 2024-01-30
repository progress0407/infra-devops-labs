#!/bin/bash


# fail this code
# kubectl set image -n default ingress/canary-deploy container=1pro/app-update

# kubectl patch ingress canary-deploy -p '{"metadata":{"annotations":{"nginx.ingress.kubernetes.io/canary-weight":"60"}}}'


# todo 33, 67, 100
# for i in {10..100..10}
for i in {33 67 100}
do
   echo "Setting canary weight to $i"
   kubectl patch ingress canary-deploy -p "{\"metadata\":{\"annotations\":{\"nginx.ingress.kubernetes.io/canary-weight\":\"$i\"}}}"
   echo "Sleeping for a while to monitor the application behavior"
   sleep 60  # Adjust the sleep duration as needed
done
