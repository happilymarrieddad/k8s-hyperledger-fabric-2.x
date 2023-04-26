#!/bin/bash

# Using git to version control the images
git add -A
git commit -m "pushing images"
git push origin master

GIT_VERSION=$(git rev-parse HEAD)
DOCKER_USERNAME="happilymarrieddadudemy"

echo "Pushing CA Images"
docker build -t ${DOCKER_USERNAME}/hyperledger-ca-root-mysql-container:${GIT_VERSION} -f ./dockerfiles/Dockerfile.FabricCAMysqlContainer .
docker push ${DOCKER_USERNAME}/hyperledger-ca-root-mysql-container:${GIT_VERSION}
docker build -t ${DOCKER_USERNAME}/hyperledger-ca-root-mysql-container:latest -f ./dockerfiles/Dockerfile.FabricCAMysqlContainer .
docker push ${DOCKER_USERNAME}/hyperledger-ca-root-mysql-container:latest

echo "Pushing Orderer Images"
docker build -t ${DOCKER_USERNAME}/hyperledger-orderer-init-container:${GIT_VERSION} -f ./dockerfiles/Dockerfile.OrdererInitContainer .
docker push ${DOCKER_USERNAME}/hyperledger-orderer-init-container:${GIT_VERSION}
docker build -t ${DOCKER_USERNAME}/hyperledger-orderer-init-container:latest -f ./dockerfiles/Dockerfile.OrdererInitContainer .
docker push ${DOCKER_USERNAME}/hyperledger-orderer-init-container:latest


echo "Finished!!"
