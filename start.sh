#!/bin/ash

crontab -r
echo -e "$CRON_JOB >> /cron.log 2>&1\n" | crontab -

crond -f

