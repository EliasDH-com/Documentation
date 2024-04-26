![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Instructions GCloud CLI🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update and upgrade system](#👉step-1-update-and-upgrade-system)
    2. [👉Step 2: Install tools](#👉step-2-install-tools)
    3. [👉Step 3: Download google cloud CLI](#👉step-3-download-google-cloud-cli)
    4. [👉Step 4: Add the gcloud CLI distribution URI as a package source](#👉step-4-add-the-gcloud-cli-distribution-uri-as-a-package-source)
    5. [👉Step 5: Update and install the gcloud CLI](#👉step-5-update-and-install-the-gcloud-cli)
    6. [👉Step 6: Test](#👉step-6-test)
4. [📦Extra](#📦extra)
5. [🔗Links](#🔗links)

---

## 🖖Introduction

The Google Cloud CLI is a command-line tool that provides a way to manage resources on Google Cloud Platform. It is a unified tool that allows you to perform many tasks, such as deploying applications, managing APIs, and monitoring your Google Cloud Platform services.

[Cloud Google SDK](https://cloud.google.com/sdk/docs/install#deb)

## ✨Steps

### 👉Step 1: Update and upgrade system
    
```bash
sudo apt-get update && sudo apt-get upgrade -y
```

### 👉Step 2: Install tools

```bash
sudo apt-get install apt-transport-https ca-certificates gnupg curl sudo -y
```

### 👉Step 3: Download google cloud CLI
```bash
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
```

### 👉Step 4: Add the gcloud CLI distribution URI as a package source
```bash
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
```

### 👉Step 5: Update and install the gcloud CLI
```bash
sudo apt-get update && sudo apt-get install google-cloud-cli
```

### 👉Step 6: Test
```bash
gcloud version
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com
