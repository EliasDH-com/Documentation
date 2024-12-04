![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Random Proxmox Configuration🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Posts](#✨posts)
    1. [👉Post 1: Template Proxmox "notes"](#👉post-1-template-proxmox-notes)
    2. [👉Post 3: Remove node and cluster Proxmox](#👉post-3-remove-node-and-cluster-proxmox)
    3. [👉Post 4: Remove (local-lvm) Proxmox](#👉post-4-remove-local-lvm-proxmox)
    4. [👉Post 5: Remove Enterprise Repository](#👉post-5-remove-enterprise-repository)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a collection of random nodes for Proxmox configuration that I have found useful. I have created this repository to keep track of all the random notes that I have made. I hope that you will find this repository useful as well. If you have any questions or suggestions, please let me know.

## ✨Posts

### 👉Post 1: Template Proxmox "notes"
> The idea is to have a template for each VM that you create. This template will contain all the information about the VM. This way you can easily find the information you need about the VM. This is especially useful when you have a lot of VMs.
```text
Property of EliasDH
-
Rented by /
-
Is run Ubuntu Server (/)
-
Hostname = webserver
-
Ip = /
-
FQDN = /
-
Port = E-/ I-/
-
```

### 👉Post 2: Remove node and cluster Proxmox
- Remove node
    ```bash
    sudo pvecm nodes

    sudo pvecm expected 1

    sudo pvecm delnode server1

    sudo rm -r /etc/pve/nodes/server1
    ```

- Remove cluster
    ```bash
    sudo pvecm expected 1

    sudo systemctl stop pve-cluster

    sudo pmxcfs -l

    sudo rm -f /etc/pve/cluster.conf /etc/pve/corosync.conf

    sudo rm -f /etc/cluster/cluster.conf /etc/corosync/corosync.conf

    sudo rm -f /var/lib/pve-cluster/.pmxcfs.lockfile

    sudo systemctl stop pve-cluster

    sudo reboot
    ```

### 👉Post 3: Remove (local-lvm) Proxmox

```bash
sudo lvremve /dev/pve/data
sudo lvremove /dev/pve/data
# > Y
sudo lvresize -l +100%FREE /dev/pve/root
sudo resize2fs /dev/mapper/pve-root
```

Credit: [Youtube Programming Stuff](https://www.youtube.com/watch?v=rMe3pd2sBf4)

### 👉Post 4: Remove Enterprise Repository

```bash
nano /etc/apt/sources.list
ls /etc/apt/sources.list.d/
rm /etc/apt/sources.list.d/pve-enterprise.list.dpkg-dist
```


## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com