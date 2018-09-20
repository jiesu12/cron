## Usage
This is used as a base image for cron job container.

The child image must provide:
* A script called `job.sh`, and copy it to root directory.
* Environment variable `SCHEDULE`, in crontab format.

The child images can provide optional scripts:
* `/init.sh` - if exists, will be executed at container launch.

Optional variable:
* FRESH_ENV - if 'true' then cron job will be called using `su - jie` so the the job.sh will have fresh environment, otherwise will be called using `su jie`.

It uses flock to prevent job overlapping. If a job runs for too long, it won't start again at the next scheduled time.
