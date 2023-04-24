#!/bin/bash

/bin/sh -c > set -x;
while [ $(curl -sw '%{http_code}' "http://${CA_HOST}:${CA_PORT}/cainfo" -o /dev/null) -ne 200 ]; do
    echo "service 'http://${CA_HOST}:${CA_PORT}' not available so waiting 15 secs"
    sleep 15;
done

echo "Ready to start enroll process to get certs"

sleep infinity
