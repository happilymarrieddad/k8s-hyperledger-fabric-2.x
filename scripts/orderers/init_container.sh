#!/bin/bash

set -x;

. /scripts/wait_for.sh "${CA_SCHEME}://${CA_URL}/cainfo"

echo "Ready to start enroll process to get certs"

sleep infinity
