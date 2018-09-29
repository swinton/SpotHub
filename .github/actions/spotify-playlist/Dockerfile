FROM alpine:latest 

RUN apk add --no-cache curl jq

COPY . /

ENTRYPOINT ["/debug.sh"]
