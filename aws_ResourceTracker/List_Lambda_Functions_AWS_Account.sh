#!/bin/bash

######################################
# Author: Kelvin Manavar
# Date:20th Sept2023
# Version: V1.0
######################################

set -x

echo "=======Print list of lambda functions in aws account========" > resourceTracker.csv

echo "S_No,Lambda_Functions_Name" >> resourceTracker.csv

Lambda_Functions_Name=$(aws lambda list-functions | jq '.Functions[].FunctionName')
    count=1
    while IFS= read -r output; do
        echo "$count,$output" >> resourceTracker.csv
        count=$((count + 1))
    done <<< "$Lambda_Functions_Name"