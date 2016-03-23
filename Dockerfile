FROM alpine:3.3
RUN apk add --update libcap && rm -rf /var/cache/apk/*
RUN setcap 'cap_net_bind_service=+ep' /bin/false
