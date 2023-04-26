K8s Hyperledger Fabric 2.x
===================================

## Notes
Probably not needed to be said but just in case... There are passwords in this repo that are meant to be used as examples. PLEASE change these values if/when you are using them in production. It should come from secrets and/or environment vars.

## Examples
```bash
kubectl create secret generic db --from-literal user=<user> --from-literal pass=<pass>

kubectl create secret docker-registry regcred \
    --docker-server=https://index.docker.io/v1/ \
    --docker-username=<username> \
    --docker-password=<password> \
    --docker-email=<email>
```