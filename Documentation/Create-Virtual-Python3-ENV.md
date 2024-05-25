![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Create Virtual Python3 ENV🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update system](#👉step-1-update-system)
    2. [👉Step 2: Install Python3 And requirements.](#👉step-2-install-python3-and-requirements)
    3. [👉Step 3: Create a virtual environment.](#👉step-3-create-a-virtual-environment)
    4. [👉Step 4: Activate the virtual environment.](#👉step-4-activate-the-virtual-environment)
    5. [👉Step 5: Try out the environment](#👉step-5-try-out-the-environment)
    6. [👉Step 6: Deactivate the virtual environment.](#👉step-6-deactivate-the-virtual-environment)
    7. [👉Step 7: Remove the virtual environment.](#👉step-7-remove-the-virtual-environment)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a guide on how to create a virtual environment in Python3. A virtual environment is a self-contained directory tree that contains a Python installation for a particular version of Python, plus a number of additional packages.

## ✨Steps

### 👉Step 1: Update system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉Step 2: Install Python3 And requirements.
```bash
sudo apt install python3 python3-venv python3-pip -y
```

### 👉Step 3: Create a virtual environment.
```bash
python3 -m venv demovenv
```

### 👉Step 4: Activate the virtual environment.
```bash
source demovenv/bin/activate
```

### 👉Step 5: Try out the environment
```bash
pip install flask
flask --version
```

### 👉Step 6: Deactivate the virtual environment.
```bash
deactivate
```

### 👉Step 7: Remove the virtual environment.
```bash
rm -rf demovenv
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com