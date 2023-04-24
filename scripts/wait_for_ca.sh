#!/bin/bash

/bin/sh -c > set -x;

while [ ! $(curl -k https://${CA_HOST}:${CA_PORT}/cainfo | jq --raw-output '.success') ]; do
    echo "service 'https://${CA_HOST}:${CA_PORT}' not available so waiting 15 secs"
    sleep 15;
done

echo "CA Ready!"

