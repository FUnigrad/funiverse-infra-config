#!/bin/sh
git clone https://github.com/nginxinc/kubernetes-ingress.git --branch v3.0.2
cd kubernetes-ingress/deployments
kubectl apply -f common/ns-and-sa.yaml
# cd ../..
# kubectl apply -f nginx-config.yaml
# cd kubernetes-ingress/deployments
kubectl apply -f rbac/rbac.yaml
kubectl apply -f common/default-server-secret.yaml
kubectl apply -f common/nginx-config.yaml
kubectl apply -f common/ingress-class.yaml
kubectl apply -f common/crds/k8s.nginx.org_virtualservers.yaml
kubectl apply -f common/crds/k8s.nginx.org_virtualserverroutes.yaml
kubectl apply -f common/crds/k8s.nginx.org_transportservers.yaml
kubectl apply -f common/crds/k8s.nginx.org_policies.yaml
kubectl apply -f daemon-set/nginx-ingress.yaml
