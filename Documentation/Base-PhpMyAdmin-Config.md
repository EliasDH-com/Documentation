![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Base PhpMyAdmin Config🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update and upgrade the system](#👉step-1-update-and-upgrade-the-system)
    2. [👉Step 2: Install mysql-server](#👉step-2-install-mysql-server)
    3. [👉Step 3: Install phpmyadmin](#👉step-3-install-phpmyadmin)
    4. [👉Step 4: Configure phpmyadmin](#👉step-4-configure-phpmyadmin)
    5. [👉Step 5: Configure MySQL](#👉step-5-configure-mysql)
    6. [👉Step 6: Login into the web interface](#👉step-6-login-into-the-web-interface)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This is a base PhpMyAdmin configuration for Ubuntu 20.04 LTS. This configuration is based on the [PhpMyAdmin](https://www.phpmyadmin.net/). And the [Ubuntu PhpMyAdmin Guide](https://help.ubuntu.com/lts/serverguide/phpmyadmin.html.en).

## ✨Steps

### 👉Step 1: Update and upgrade the system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉Step 2: Install mysql-server
```bash
sudo apt install mysql-server -y
```

### 👉Step 3: Install phpmyadmin
```bash
sudo apt-get install phpmyadmin apache2-utils -y
# sudo apt install phpmyadmin -y
```

### 👉Step 4: Configure phpmyadmin
The images I show here are automatically displayed when you run the installation 
process in the terminal.

1. Question: Which web server do you want to use? We are going to use Apache2 so: Press the spacebar then press the tab button and then press enter. 

    ![Base-PhpMyAdmin-Config-1](/Images/Base-PhpMyAdmin-Config-1.png)

2. Question: About how we want to configure the MySQL server. We just click 
enter, then this configuration process is done automatically, and we don't have to 
set it up manually.

    ![Base-PhpMyAdmin-Config-2](/Images/Base-PhpMyAdmin-Config-2.png)


3. Question: You must provide a password for the application in question, so type the password click on tab and then press enter.

    ![Base-PhpMyAdmin-Config-3](/Images/Base-PhpMyAdmin-Config-3.png)

4. Question: They want you to repeat your password, so type the password click on tab and then press enter.

    ![Base-PhpMyAdmin-Config-4](/Images/Base-PhpMyAdmin-Config-4.png)

### 👉Step 5: Configure MySQL
We need to connect to the SQL server. We do that with the following command. The default user is root without a password. 
```bash
sudo mysql -u root
```

Now we will create a new user. You do this with the following command. Make sure you change user with your username and password with your password & we will give the necessary permissions. To the new user.
```sql
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost';
EXIT;
```

### 👉Step 6: Login into the web interface
Type in your IP address and then the following path. 
```text
/phpmyadmin/index.php 
OR
/phpmyadmin/
```
Example: 
```text
http://localhost/phpmyadmin/index.php
OR
http://10.0.1.1/phpmyadmin/index.php
```
Type in your username and password and then click on go.

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com