#!/bin/bash

param=$1
pod_array=($(kubectl -n ${param} get pods --no-headers -o custom-columns=":metadata.name"))

# declare -p pod_array -> to view array #

# loop thru pods for logs #
for i in "${pod_array[@]}"
do
        :
        echo "###### $i" >> ${param}__${i}.txt
        echo "####" >> ${param}__${i}.txt
        echo "##" >> ${param}__${i}.txt
        echo "#" >> ${param}__${i}.txt
        echo "----------------------------------------" >> ${param}__${i}.txt
        kubectl -n $param logs $i >> ${param}__${i}.txt
        echo "----------------------------------------" >> ${param}__${i}.txt
done