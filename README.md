## Usage
This is used as a base image for cron job container.

The child image must provide:
* A script called `job.sh`, and copy it to root directory.
* Environment variable `SCHEDULE`, in crontab format.

Optional variable:
* FRESH_ENV - if 'true' then cron job will be called using `su - jie` so the the job.sh will have fresh environment, otherwise will be called using `su jie`.
