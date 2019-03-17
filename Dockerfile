FROM alpine:3.8

COPY cron.sh /

RUN apk --no-cache add bash busybox-suid tzdata && \
ln -snf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
echo 'America/Chicago' > /etc/timezone && \
addgroup -g 1000 jie && adduser -D -G jie -u 1000 jie && \
chmod +x /cron.sh && \
mkdir /log && chown jie:jie /log

VOLUME /log
ENTRYPOINT ["/cron.sh"]

