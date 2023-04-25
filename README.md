K8s Hyperledger Fabric 2.x
===================================

```bash
kubectl create secret generic db --from-literal user=someusr --from-literal pass=1234

kubectl create secret docker-registry regcred \
    --docker-server=https://index.docker.io/v1/ \
    --docker-username=happilymarrieddadudemy \
    --docker-password=<password> \
    --docker-email=happilymarrieddadudemy
```