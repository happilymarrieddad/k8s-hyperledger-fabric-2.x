#!/bin/bash

/bin/sh -c > set -x;

while [ ! $(curl -k ${SERVICE_TO_WAIT_FOR} | jq --raw-output '.success') ]; do
    echo "service '${SERVICE_TO_WAIT_FOR}' not available so waiting 15 secs"
    sleep 2;
done

echo "CA Ready!"

