#!/bin/bash

format_weight_json_str() {
    local ratio=$1
    echo "this is calle, $ratio"
    # echo "{\"metadata\":{\"annotations\":{\"nginx.ingress.kubernetes.io/canary-weight\":\"$ratio\"}}}"
}

ratio_list=(10, 25, 50, 100)

echo $(format_weight_json_str 50)

for ratio in "${ratio_list[@]}"
do
   result=$(format_weight_json_str $raito)
   echo $result
   sleep 1
done
