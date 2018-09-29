#!/bin/sh

ls -ltr /
ls -ltr $GITHUB_WORKSPACE
ls -ltr ${GITHUB_WORKSPACE}/playlist.csv
cut -f 1 -d , ${GITHUB_WORKSPACE}/playlist.csv | cut -f 5 -d /
