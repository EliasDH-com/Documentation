![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍K9s🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Setup K9s](#👉step-1-setup-k9s)
    2. [👉Step 2: Commands](#👉step-2-commands)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This document describes the steps to install K9s on a Ubuntu 24.04 server. And how to use it.

## ✨Steps

### 👉Step 1: Setup K9s
```bash
cd ~
curl -L https://github.com/derailed/k9s/releases/download/v0.21.4/k9s_Linux_x86_64.tar.gz -o k9s
tar -xf k9s
sudo chmod +x k9s
sudo mv ./k9s /usr/local/bin/k9s
k9s
```

### 👉Step 2: Commands
```bash
# List all available CLI options
k9s help

# Get info about K9s runtime (logs, configs, etc..)
k9s info

# Run K9s in a given namespace.
k9s -n mycoolns

# Start K9s in a non default KubeConfig context
k9s --context coolCtx

# Start K9s in readonly mode - with all modification commands disabled
k9s --readonly

# Show K9s node view
k9s -c node

# Show K9s deployment view
k9s -c deploy

# Show K9s pod view
k9s -c pod

# Show K9s container view
k9s -c cont

# Show K9s logs view
k9s -c logs

# Show K9s events view
k9s -c events
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com