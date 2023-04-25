#!/bin/bash

set -x;

. /scripts/wait_for.sh "${CA_SCHEME}://${CA_URL}/cainfo"

echo "Ready to start enroll process to get certs"

# fabric-ca-client enroll -d \
#     -u ${CA_SCHEME}://${CA_USERNAME}:${CA_PASSWORD}@${CA_URL} \
#     --tls.certfiles /fabric-ca-server/tls-cert.pem \
#     --enrollment.profile tls \
#     --mspdir /var/hyperledger/orderer/msp

sleep infinity
