S3 BACKUP SCRIPT

# Intro
This script backup folder to S3 bucket and manages remote backup

# Configuration
Edit these variables in config.sh
* *s3_backup_bucket*:
* *folder_to_backup*:
* *backup_name*:

#Install in crontab
With root user:
```
crontab -e
```
and paste this:
```
SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root
HOME=/root

0 1 * * * cd ~/s3-backup/ && ./s3-backup.sh
```
Edit crontab as you prefer.
