FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && ls -al

RUN apk update && apk add curl

ENTRYPOINT ["/entrypoint.sh"]
