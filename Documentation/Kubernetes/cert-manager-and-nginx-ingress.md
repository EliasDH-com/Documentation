![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Cert Manager And Ingress🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [👉 Deploy Cert Manager For Bare Metal And Cloud](#👉-deploy-cert-manager-for-bare-metal-and-cloud)
4. [👉 Deploy Metallb Load Balancer For Bare Metal](#👉-deploy-metallb-load-balancer-for-bare-metal)
5. [👉 Deploy Nginx Ingress for Cloud](#👉-deploy-nginx-ingress-for-cloud)
6. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a simple guide to deploy cert-manager and nginx ingress on your kubernetes cluster. This guide is for both cloud and bare metal clusters.

## 👉 Deploy Cert Manager For Bare Metal And Cloud

- This one is easy:
```bash
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.yaml
# kubectl delete -f https://github.com/cert-manager/cert-manager/releases/latest/download/cert-manager.yaml
```

- Check if the pods are running:
```bash
watch kubectl get pods -n cert-manager # CTRL+C to exit
```

## 👉 Deploy Metallb Load Balancer For Bare Metal

- Preparation:
```bash
kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system
```

- To install MetalLB, apply the manifest:
```bash
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.14.8/config/manifests/metallb-native.yaml
# kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.14.8/config/manifests/metallb-native.yaml
```

- Check if the pods are running:
```bash
watch kubectl get pods -n metallb-system # CTRL+C to exit
kubectl api-resources | grep metallb
```

- Set the IP range for the Load Balancer:
```bash
kubectl apply -f metallb-configmap.yaml -n metallb-system
# kubectl delete -f metallb-configmap.yaml -n metallb-system
```
```yaml
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: address-pool-1
  namespace: metallb-system
spec:
  addresses:
    - 192.168.1.160-192.168.1.169
```

- Check if the IP range is set:
```bash
kubectl get IPAddressPool -n metallb-system
```

- Set the L2 Advertisement:
```bash
kubectl apply -f L2-Advertisement.yaml
# kubectl delete -f L2-Advertisement.yaml
```
```yaml
apiVersion: metallb.io/v1beta1
kind: L2Advertisement
metadata:
  name: l2advertisement-1
  namespace: metallb-system
spec:
  ipAddressPools:
  - address-pool-1
```

- Check if the L2 Advertisement is set:
```bash
kubectl get l2advertisement -n metallb-system
```

## 👉 Deploy Nginx Ingress For Cloud

- This one is easy:
```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
# kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
```

- Check if the pods are running:
```bash
kubectl get svc -n ingress-nginx
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com