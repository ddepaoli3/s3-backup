S3 BACKUP SCRIPT

# Intro
This script backup folder to S3 bucket and manages remote backup

#Prerequisites
* [aws cli](http://docs.aws.amazon.com/cli/latest/userguide/installing.html)
* [aws cli configured](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html) to write on S3

#Install dependencies
Ubuntu:
```
apt-get install git awscli
```

Centos:
```
yum install git awscli
```

And then configure awscli:
```
aws configure
```

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
