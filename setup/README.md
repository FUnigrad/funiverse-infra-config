# Setup Service For K8S cluster 
## **Must**

### 1. K9S
```cmd
wget https://github.com/derailed/k9s/releases/download/v0.27.3/k9s_Linux_amd64.tar.gz
tar -xf k9s_Linux_amd64.tar.gz k9s
sudo install k9s /usr/local/bin
rm k9s_Linux_amd64.tar.gz k9s
```
### 2. helm
```
chmod 700 helm/setup.sh
helm/setup.sh
```

### 2. [Weave Net](https://www.weave.works/docs/net/latest/kubernetes/kube-addon/)
```cmd
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
```
### 3. [Nginx Ingress Controller](https://docs.nginx.com/nginx-ingress-controller/installation/installation-with-manifests) 
```cmd
chmod 700 nginx/setup.sh
nginx/setup.sh
```
### 4. ArgoCD
```cmd
chmod 700 argoCD/setup.sh
argoCD/setup.sh
kubectl patch svc argocd-server -n argocd --patch-file argoCD/patch.yaml
```
### 5. Prometheus / Grafana 

## **Optional**

### 1. MentalLB (Optional)
```cmd
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.10.2/manifests/metallb.yaml
```
Config mentalLB Address Pool
```cmd
kubectl apply -f metallb/config-address-pool.yaml
```