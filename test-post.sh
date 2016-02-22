#!/usr/bin/env bash

curl -i -d @event-1.json -X POST -H "Content-Type:application/json" "http://192.168.59.103:2113/streams/newstream"