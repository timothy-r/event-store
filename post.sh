#!/usr/bin/env bash

DATA=$1
IP=192.168.59.103
PORT=2113
STREAM=newstream

curl \
    -d @$DATA \
    -H "Content-Type:application/vnd.eventstore.events+json" \
     "http://$IP:$PORT/streams/$STREAM"