#!/bin/sh

glue=""
tracks=""
for trackid in $( cut -f 1 -d , ${GITHUB_WORKSPACE}/playlist.csv | cut -f 5 -d / )
do
  tracks="${tracks}${glue}\"spotify:track:${trackid}\""
  glue=","
done

# Parse through jq to verify JSON
data=$( echo "{\"uris\": [${tracks}]}" | jq '.' )

echo $data
