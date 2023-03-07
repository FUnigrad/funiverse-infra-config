#!/bin/sh
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
curl -sSL -o $HOME/argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 $HOME/argocd-linux-amd64 /usr/local/bin/argocd
rm $HOME/argocd-linux-amd64
