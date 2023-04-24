#!/bin/bash

set -x;

if [[ -z "${1}" ]]; then
    echo "service to wait for IS NOT SET... resting forever"
    sleep infinity
fi

while [ ! $(curl -k ${1} | jq --raw-output '.success') ]; do
    echo "service '${1}' not available so waiting 2 secs"
    sleep 2;
done

echo "CA Ready!"
