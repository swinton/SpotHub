#!/bin/sh

SPOTIFY_ACCESS_TOKEN=$( /get_access_token.sh )
payload=$( /process_playlist.sh )

# Replace a Playlist's Tracks
# https://developer.spotify.com/documentation/web-api/reference/playlists/replace-playlists-tracks/
snapshot_id=$( curl --silent \
  --request PUT \
  --url https://api.spotify.com/v1/playlists/${playlist_id}/tracks \
  --header "authorization: Bearer ${SPOTIFY_ACCESS_TOKEN}" \
  --header 'content-type: application/json' \
  --data "${payload}" | jq .snapshot_id --raw-output )

echo $snapshot_id
