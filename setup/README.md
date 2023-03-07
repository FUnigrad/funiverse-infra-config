# Setup Service For K8S cluster
## 1. K9S
```cmd
wget https://github.com/derailed/k9s/releases/download/v0.27.3/k9s_Linux_arm.tar.gz
tar -xf k9s_Linux_amd64.tar.gz
```
## 2. [Weave Net](https://www.weave.works/docs/net/latest/kubernetes/kube-addon/)
## 3. [Nginx Ingress Controller](https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-manifests) 
## 4. MentalLB
```cmd
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/metallb.yaml
```
Config mentalLB Address Pool
```cmd
kubectl apply -f metallb/config-address-pool.yaml
```
## 5. ArgoCD
```cmd
./argoCD/setup.sh
kubectl patch svc argocd-server -n argocd --patch-file ./argoCD/patch.yaml
```
## 6. Prometheus / Grafana 
## 7. cert-manager