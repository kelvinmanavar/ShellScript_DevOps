#!/bin/bash

######################################
# Author: Kelvin Manavar
# Date:20th Sept2023
# Version: V1.0
######################################

set -x
echo "========Print list of ec2 instances status in aws account========" > resourceTracker.csv

echo "S_No,EC2Instance_status" >> resourceTracker.csv

EC2Instance_status=$(aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | "\(.InstanceId) \(.State.Name)"')
    counter=1
    while IFS= read -r output; do
        echo "$counter,$output" >> resourceTracker.csv
        counter=$((counter+1))
    done <<< "$EC2Instance_status"    