![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Install Longhorn🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Set up environment](#👉step-1-set-up-environment)
    2. [👉Step 2: Install Longhorn](#👉step-2-install-longhorn)
    3. [👉Step 3: Access the Longhorn UI](#👉step-3-access-the-longhorn-ui)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This guide will help you install Longhorn on a Kubernetes cluster. Longhorn is a distributed block storage system for Kubernetes. It is built using containers and microservices. Longhorn creates a dedicated storage controller for each block device volume and synchronously replicates the volume across multiple replicas stored on multiple nodes. The storage controller and replicas are themselves orchestrated using Kubernetes. Longhorn is lightweight, reliable, and easy to use.

## ✨Steps

### 👉Step 1: Set up environment

- Update and upgrade the system.
```bash
sudo apt-get update && sudo apt-get upgrade -y
```

- Test if the system is ready for Longhorn.
```bash
bash <(curl -s https://raw.githubusercontent.com/longhorn/longhorn/refs/tags/v1.7.2/scripts/environment_check.sh)
```

> Let's see some common problems.

- **Problem 1: A kernel module is missing**
```bash
modinfo iscsi_tcp                                   # Check if the module is available
sudo modprobe iscsi_tcp                             # Load the module
echo "iscsi_tcp" | sudo tee -a /etc/modules         # Add the module to the list of modules to load at boot
lsmod | grep iscsi_tcp                              # Check if the module is loaded
```

- **Problem 2: The multipathd service is running**
```bash
sudo systemctl stop multipathd                      # Stop the multipathd service
sudo systemctl disable multipathd                   # Disable the multipathd service
systemctl status multipathd                         # Check the status of the multipathd service
```

- **Problem 3: The nfs-common package is not installed**
```bash
sudo apt-get update && sudo apt-get upgrade -y      # Update and upgrade the system
sudo apt-get install -y nfs-common                  # Install the nfs-common package
dpkg -l | grep nfs-common                           # Check if the nfs-common package is installed
```

### 👉Step 2: Install Longhorn

- Install Longhorn.
```bash
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.7.2/deploy/longhorn.yaml
```

- Check the status of the pods.
```bash
kubectl get pods --namespace longhorn-system --watch
```

- Check the status of the Longhorn system.
```bash
kubectl -n longhorn-system get pods
```

- Get the storage class.
```bash
kubectl get storageclass
```

### 👉Step 3: Access the Longhorn UI

- Create a basic authentication file.
```bash
USER=<USERNAME_HERE>; PASSWORD=<PASSWORD_HERE>; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth
```

- Create a secret.
```bash
kubectl create secret generic basic-auth -n longhorn-system --from-file=auth
# kubectl delete secret basic-auth -n longhorn-system
```

- Set up a ingress controller.
```bash
kubectl apply -f Ingress.yaml
# Service name: longhorn-frontend
# Namespace: longhorn-system
# Port: 8080
```

- Access the Longhorn UI.
```bash
kubectl get ingress -A
```

- Test the Longhorn UI.
```bash
curl http://<EXTERNAL_IP> # <EXTERNAL_IP> is the IP address of the ingress controller
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com