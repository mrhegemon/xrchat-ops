# Deploy Agones With XRChat

## Install Agones Via Helm

First install helm and kubectl then run this command, you will need a k8s cluster with version 1.14.

``` bash
kubectl create namespace agones-system
helm repo add agones https://agones.dev/chart/stable
helm upgrade --install --values ./config/agones_values.yaml MY_RELEASE --namespace agones-system agones/agones
```

## Enable GameServer In Helm

Once you have installed agones you can now enable gameserver in our helm which deploys a fleet.

``` bash
helm upgrade --reuse-values --set gs.enables=true MY_RELEASE xrchat/xrchat
```

## Scalling GameServer

[NOT FINISHED YET]
