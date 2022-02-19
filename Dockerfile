ARG CONSUL_VERSION=1.10
FROM consul:${CONSUL_VERSION}
RUN apk add -U bind-tools
RUN mkdir /etc/consul.d 
RUN mkdir /var/lib/consul \
    && chmod 777 -R /var/lib/consul