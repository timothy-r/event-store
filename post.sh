#!/usr/bin/env bash

DATA=$1

curl -i -d @$DATA -X POST -H "Content-Type:application/vnd.eventstore.events+json" "http://192.168.59.103:2113/streams/newstream"