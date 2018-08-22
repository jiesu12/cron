FROM armhf/alpine:3.5

VOLUME /log
COPY cron.sh /

RUN apk --no-cache add busybox-suid tzdata && \
ln -snf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
echo 'America/Chicago' > /etc/timezone && \
addgroup -g 1000 jie && adduser -D -G jie -u 1000 jie && \
chmod +x /cron.sh && \
chown jie:jie /log

ENTRYPOINT ["/cron.sh"]

