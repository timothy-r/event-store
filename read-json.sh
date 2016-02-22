#!/usr/bin/env bash

# ought to take stream name as a parameter

IP=192.168.59.103
PORT=2113
STREAM=newstream
TYPE_JSON=application/vnd.eventstore.atom+json

curl \
    -H "Accept: $TYPE_JSON" \
    "http://$IP:$PORT/streams/$STREAM"