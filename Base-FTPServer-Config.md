![logo](/Images/logo.png)
# 💙🤍Base FTPServer Config🤍💙

This wil help you to configure a FTP server on Ubuntu 20.04 LTS.

---

## 📘Table of Contents

1. [Introduction](#introduction)
2. [Steps](#steps)
    1. [Step 1: Update and upgrade the system](#step-1-update-and-upgrade-the-system)
    2. [Step 2: Install vsftpd](#step-2-install-vsftpd)
    3. [Step 3: Configure vsftpd](#step-3-configure-vsftpd)
        1. [Step 3.1: Change the following lines](#step-31-change-the-following-lines)
    4. [Step 4: Restart vsftpd](#step-4-restart-vsftpd)
    5. [Step 5: Configure UFW (Ubuntu Firewall)](#step-5-configure-ufw-ubuntu-firewall)
    6. [Step 6: Create a new user](#step-6-create-a-new-user)
    7. [Step 7: Configuring FTP Access](#step-7-configuring-ftp-access)
3. [Links](#links)

---

## 🖖Introduction

The following steps will help you to configure a FTP server on Ubuntu 20.04 LTS. This is a base configuration and should be used as a starting point. You can add more security by using a certificate and a more secure password.

## ✨Steps

### 👉 Step 1: Update and upgrade the system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉 Step 2: Install vsftpd
```bash
sudo apt install vsftpd
```

### 👉 Step 3: Configure vsftpd
```bash
sudo nano /etc/vsftpd.conf # nano is a text editor like vim
```

#### 👉 Step 3.1: Change the following lines
```text
listen=YES 
anonymous_enable=NO 
local_enable=YES 
write_enable=YES 
dirmessage_enable=YES 
use_localtime=YES 
xferlog_enable=YES 
connect_from_port_20=YES 
xferlog_file=/var/log/vsftpd.log 
ftpd_banner=Welcome to ftp service.
secure_chroot_dir=/var/run/vsftpd/empty 
pam_service_name=vsftpd 
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem 
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key 
ssl_enable=YES 
ssl_sslv2=YES 
pasv_enable=Yes 
pasv_min_port=60000 
pasv_max_port=60100 
port_enable=yes 
pasv_address=20.248.200.7 
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist 
userlist_deny=NO
```

### 👉 Step 4: Restart vsftpd
```bash
sudo systemctl restart vsftpd
```

### 👉 Step 5: Configure UFW (Ubuntu Firewall)
```bash
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 990/tcp
sudo ufw allow 60000:60100/tcp
sudo ufw status
```

### 👉 Step 6: Create a new user
```bash
sudo adduser ftpuser

sudo mkdir /home/ftpuser/ftp
sudo chown nobody:nogroup /home/ftpuser/ftp
sudo chmod a-w /home/ftpuser/ftp

echo "vsftpd test file" | sudo tee /home/ftpuser/ftp/files/test.txt
```

### 👉 Step 7: Configuring FTP Access
```bash
echo "ftpuser" | sudo tee -a /etc/vsftpd.userlist
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us eliasdehondt@outlook.com.