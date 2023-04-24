#!/bin/bash

GIT_VERSION=$(git rev-parse HEAD)
DOCKER_USERNAME="happilymarrieddadudemy"

echo "Pushing Orderer Images"

docker build -t ${DOCKER_USERNAME}/hyperledger-orderer-init-container:${GIT_VERSION} -f ./dockerfiles/Dockerfile.OrdererInitContainer .
docker push ${DOCKER_USERNAME}/hyperledger-orderer-init-container:${GIT_VERSION}
