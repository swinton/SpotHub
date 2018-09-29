#!/bin/sh

# Requesting a refreshed access token; Spotify returns a new access token to your app
# https://developer.spotify.com/documentation/general/guides/authorization-guide/#4-requesting-a-refreshed-access-token-spotify-returns-a-new-access-token-to-your-app

access_token=$( curl --silent \
  --request POST \
  --url https://accounts.spotify.com/api/token \
  --header "authorization: Basic ${SPOTIFY_AUTH}" \
  --header 'content-type: application/x-www-form-urlencoded' \
  --data "grant_type=refresh_token&refresh_token=${SPOTIFY_REFRESH_TOKEN}" \
  | jq .access_token --raw-output )

echo $access_token
