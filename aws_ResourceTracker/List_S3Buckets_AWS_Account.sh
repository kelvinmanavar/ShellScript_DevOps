#!/bin/bash

######################################
# Author: Kelvin Manavar
# Date:20th Sept2023
# Version: V1.0
######################################

set -x

# List aws S3 buckets in aws account
echo "=======Print list of S3 buckets in aws account========" > resourceTracker.csv

echo "S_No,S3Bucket_Name" >> resourceTracker.csv

S3Bucket_Name=$(aws s3 ls | awk '{print $3}')
    count=1
    while IFS= read -r output; do
        echo "$count,$output" >> resourceTracker.csv
        count=$((count + 1))
    done <<< "$S3Bucket_Name"