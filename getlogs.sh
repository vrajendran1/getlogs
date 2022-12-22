#!/bin/bash

param=$1
mode=$2
pod_array=($(kubectl -n ${param} get pods --no-headers -o custom-columns=":metadata.name"))

# declare -p pod_array -> to view array #


if [[ "$mode" == "1" ]]
then
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
else
        for i in "${pod_array[@]}"
        do
                :
                echo "###### $i" >> ${param}.txt
                echo "####" >> ${param}.txt
                echo "##" >> ${param}.txt
                echo "#" >> ${param}.txt
                echo "----------------------------------------" >> ${param}.txt
                kubectl -n $param logs $i >> ${param}.txt
                echo "----------------------------------------" >> ${param}.txt
        done
fi
