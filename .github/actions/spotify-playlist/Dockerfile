FROM alpine:latest 

LABEL "com.github.actions.icon"="unmute"
LABEL "com.github.actions.color"="ffd33d"
LABEL "com.github.actions.name"="Spotify"
LABEL "com.github.actions.description"="This task will update a playlist on Spotify with tracks held in playlist.csv"

RUN apk add --no-cache curl jq

COPY . /

ENTRYPOINT ["/populate_playlist.sh"]
