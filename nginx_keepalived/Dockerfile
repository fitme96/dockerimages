FROM ubuntu:latest
RUN echo "nameserver 223.5.5.5" >> /etc/resolv.conf \
&& apt update \
&& apt install -y gcc curl openssl libpopt-dev libpcre3 libpcre3-dev zlib1g-dev libssl-dev libpcrecpp0v5 make net-tools \
&& curl -o nginx.tar.gz -fSL http://nginx.org/download/nginx-1.15.12.tar.gz \
&& curl -o keepalived.tar.gz -fSL https://www.keepalived.org/software/keepalived-2.0.10.tar.gz \
&& tar xf nginx.tar.gz -C /tmp/ \
&& tar xf keepalived.tar.gz -C /tmp \
&& cd /tmp/nginx-1.15.12/ \
&& ./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --modules-path=/usr/lib/nginx/modules --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --with-http_ssl_module \
&& make \
&& make install \
&& cd /tmp/keepalived-2.0.10 \
&& ./configure --prefix=/usr --enable-log-file \
&& make \
&& make install \
&& cp /tmp/keepalived-2.0.10/keepalived/etc/init.d/keepalived /etc/init.d/ \
&& mkdir -p /etc/keepalived/ \
&& apt autoremove -y gcc curl make \
&& rm -rf /tmp/* \
&& rm -rf /nginx.tar.gz /keepalived.tar.gz \
&& rm -rf rm -rf /var/lib/apt/lists/*
