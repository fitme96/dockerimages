FROM alpine:latest
ADD crontab /etc/cron.d/root

RUN	chmod 0644 /etc/cron.d/root && \
    touch /var/log/cron.log && \
    apk update && \
	apk add iproute2 net-tools gzip coreutils tar bash
ENTRYPOINT [ "/usr/sbin/crond", "-f", "-c", "/etc/cron.d" ]
