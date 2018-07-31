## Usage
This is used as a base image for cron job container.

The child image must provide:
* A script called `job.sh`, and copy it to root directory.
* Environment variable `SCHEDULE`, in crontab format.

