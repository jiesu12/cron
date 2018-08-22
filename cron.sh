#!/bin/sh

crontab -r

if [ "$FRESH_ENV" = 'true' ]
then
  echo -e "${SCHEDULE} su - jie -s /bin/sh -c '/job.sh >> /log/cron.log 2>&1'\n" | crontab -
else
  echo -e "${SCHEDULE} su jie -s /bin/sh -c '/job.sh >> /log/cron.log 2>&1'\n" | crontab -
fi

crond -f

