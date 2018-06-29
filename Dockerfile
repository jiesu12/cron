FROM armhf/alpine:3.5

RUN apk update \
&& apk add bash

VOLUME /scripts

COPY start.sh /
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]

