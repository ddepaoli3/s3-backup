#!/bin/bash

#S3 bucket and subfolder where locate backup archive
s3_backup_bucket=""

#NOTE: folder_to_backup and backup_name must be the same size:
#name of backup of 'n' folder_to_backup folder will be 'n' element of backup_name array

#Array of folders to backup
folder_to_backup=("")
#Array of backup name:
backup_name=(`date +%F`)