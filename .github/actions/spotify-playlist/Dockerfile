FROM alpine:latest 

RUN apk add --no-cache curl jq

COPY . /

ENTRYPOINT ["/process_playlist"]
