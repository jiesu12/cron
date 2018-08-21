FROM jiesu/alpine-arm

COPY cron.sh /
RUN chmod +x /cron.sh

ENTRYPOINT ["/cron.sh"]

