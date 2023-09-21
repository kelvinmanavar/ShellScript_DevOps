#!/bin/bash

######################################
# Author: Kelvin Manavar
# Date:20th Sept2023
# Version: V1.0
######################################

set -x
echo "=======Print list IAM users in aws account========" > resourceTracker.csv
echo "S_No,IAM_Users" >> resourceTracker.csv

IAM_Users=$(aws iam list-users | jq '.Users[].UserName')
    count=1
    while IFS= read -r output; do
        echo "$count,$output" >> resourceTracker.csv
        count=$((count + 1))
    done <<< "$IAM_Users"
