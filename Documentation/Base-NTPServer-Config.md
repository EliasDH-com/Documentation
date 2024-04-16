![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Base NTPServer Config🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update and upgrade the system](#👉step-1-update-and-upgrade-the-system)
    2. [👉Step 2: Install ntp](#👉step-2-install-ntp)
    3. [👉Step 3: Configure ntp](#👉step-3-configure-ntp)
        1. [👉Step 3.1: Change the following lines](#👉step-3.1-change-the-following-lines)
    4. [👉Step 4: Restart ntp](#👉step-4-restart-ntp)
    5. [👉Step 5: Configure UFW (Ubuntu Firewall)](#👉step-5-configure-ufw-ubuntu-firewall)
    6. [👉Step 6: Check if the server is working](#👉step-6-check-if-the-server-is-working)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a base NTP server configuration for Ubuntu 20.04 LTS. This configuration is used for the NTP server of [EliasDH.com](https://eliasdh.com). This configuration is based on the [NTP Pool Project](https://www.ntppool.org/en/). And the [Ubuntu NTP Server Guide](https://help.ubuntu.com/lts/serverguide/NTP.html.en).

## ✨Steps

### 👉Step 1: Update and upgrade the system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉Step 2: Install ntp
```bash
sudo apt install ntp -y
```

### 👉Step 3: Configure ntp
```bash
sudo nano /etc/ntp.conf # nano is a text editor like vim
```

#### 👉Step 3.1: Change the following lines
```text
driftfile /var/lib/ntp/ntp.drift
leapfile /usr/share/zoneinfo/leap-seconds.list
statistics loopstats peerstats clockstats
filegen loopstats file loopstats type day enable
filegen peerstats file peerstats type day enable
filegen clockstats file clockstats type day enable
pool 0.ubuntu.pool.ntp.org iburst
pool 1.ubuntu.pool.ntp.org iburst
pool 2.ubuntu.pool.ntp.org iburst
pool 3.ubuntu.pool.ntp.org iburst
pool ntp.ubuntu.com
restrict -4 default kod notrap nomodify nopeer noquery limited
restrict -6 default kod notrap nomodify nopeer noquery limited
restrict 127.0.0.1
restrict ::1
restrict source notrap nomodify noquery
```

### 👉Step 4: Restart ntp
```bash
sudo systemctl restart ntp
```

### 👉Step 5: Configure UFW (Ubuntu Firewall)
```bash
sudo ufw allow 123/udp
sudo ufw allow 123/tcp
sudo ufw reload
```

### 👉Step 6: Check if the server is working
```bash
ntpq -p
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com