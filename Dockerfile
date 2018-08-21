FROM armhf/alpine:3.5

COPY cron.sh /
RUN chmod +x /cron.sh

ENTRYPOINT ["/cron.sh"]

