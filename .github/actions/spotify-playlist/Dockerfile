FROM alpine:latest 

RUN apk add --no-cache curl jq

COPY . /

ENTRYPOINT ["/populate_playlist.sh"]
