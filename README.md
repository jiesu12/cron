## Usage
```
docker run -d -v /path/to/scripts:/scripts -e CRON_JOB='* * * * * /scripts/hello_world.sh' --name cron_hello_world jiesu/cron
```
