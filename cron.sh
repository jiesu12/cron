#!/bin/sh

set -e

if [ -f /init.sh ]
then
  /init.sh
fi

crontab -r

if [ "$FRESH_ENV" = 'true' ]
then
  echo -e "${SCHEDULE} flock -n /cron.lock su - jie -s /bin/sh -c '/job.sh >> /log/cron.log 2>&1'\n" | crontab -
else
  echo -e "${SCHEDULE} flock -n /cron.lock su jie -s /bin/sh -c '/job.sh >> /log/cron.log 2>&1'\n" | crontab -
fi

crond -f

