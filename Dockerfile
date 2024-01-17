FROM alpine:latest
ENV HTTP_PROXY=http://10.75.148.17:3128 \
    HTTPS_PROXY=http://10.75.148.17:3128 \
    NO_PROXY=localhost,127.0.0.1,.ourtde.com,172.26.160.0/27,10.141.249.0/25,10.141.249.128/25,svc,default,local,cluster.local,192.168.0.0/16,172.16.0.0/12,10.0.0.0/8
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && ls -al

RUN apk update && apk add curl

ENTRYPOINT ["/entrypoint.sh"]
