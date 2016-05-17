#!/bin/bash

source ./config.sh

#Test if folder_to_backup and backup_name have the same length
test ${#folder_to_backup[@]} -eq ${#backup_name[@]} || { echo "Impossible to continue with backup."; exit 1; }

for folder in "${folder_to_backup[@]}"
do
    tar --absolute-names -czf /tmp/$backup_name.tar.gz "$folder"
    aws s3 cp /tmp/$backup_name.tar.gz s3://$s3_backup_bucket/$backup_name.tar.gz
    rm /tmp/$backup_name.tar.gz
done
