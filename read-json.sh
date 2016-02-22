#!/usr/bin/env bash

# ought to take stream name as a parameter

IP=192.168.59.103
PORT=2113
STREAM=newstream

curl \
    -H "Accept:application/vnd.eventstore.atom+json" \
    "http://$IP:$PORT/streams/$STREAM"