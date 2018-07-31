FROM armhf/alpine:3.5

RUN apk --no-cache add busybox-suid

RUN addgroup -g 1000 jie && adduser -D -G jie -u 1000 jie

COPY cron.sh /
RUN chmod +x /cron.sh

ENTRYPOINT ["/cron.sh"]

