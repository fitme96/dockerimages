FROM 192.168.2.120:4443/fitme/nginx_keepalived:nodisc
COPY ./confd /usr/local/bin/
RUN mkdir -p /etc/confd/conf.d /etc/confd/templates 
COPY ./confd.toml /etc/confd/conf.d/
COPY ./upstream.tpl /tmp/
COPY ./nginx.conf /etc/nginx/nginx.conf
