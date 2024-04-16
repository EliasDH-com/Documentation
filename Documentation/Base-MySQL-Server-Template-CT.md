![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Base MySQL Server Template CT🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update system](#👉step-1-update-system)
    2. [👉Step 2: Install MySQL](#👉step-2-install-mysql)
        1. [👉Step 2.1: Apache extensions](#👉step-2.1-apache-extensions)
        2. [👉Step 2.1: Apache restart](#👉step-2.1-apache-restart)
    3. [👉Step 3: Login to MySQL](#👉step-3-login-to-mysql)
    4. [👉Step 4: Database configuration](#👉step-4-database-configuration)
    5. [👉Step 5: Copy database](#👉step-5-copy-database)
    6. [👉Step 6: Reboot database](#👉step-6-reboot-database)
    7. [👉Step 7: Clear history](#👉step-7-clear-history)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This template provides a structured approach to setting up a basic MySQL server on a Linux distribution using commonly used packages such as MySQL-server and PHP.

## ✨Steps

### 👉Step 1: Update system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉Step 2: Install MySQL
```bash
sudo apt install MySQL-server
```

#### 👉Step 2.1: Apache extensions
```bash
sudo apt install php libapache2-mod-php php-MySQL
```

#### 👉Step 2.1: Apache restart
```bash
sudo systemctl restart apache2
```

### 👉Step 3: Login to MySQL
```bash
sudo mysql -u root -p # Enter password
# If you get an error, try this: sudo MySQL -u root
```

### 👉Step 4: Database configuration
- Create database
    ```sql
    CREATE DATABASE <database_name>;
    ```
- Use database
    ```sql
    USE <database_name>;
    ```
- Create user
    ```sql
    CREATE USER 'newuser'@'localhost' IDENTIFIED BY '123'; -- Replace 'newuser' and '123' with your own values
    ```
- Grant privileges
    ```sql
    GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost'; -- Replace 'newuser' with your own value
    ```
- Flush privileges
    ```sql
    FLUSH PRIVILEGES;
    ```
- Create table
    ```sql
    CREATE TABLE <table_name> (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(30) NOT NULL,
    );
    ```
- Insert data
    ```sql
    INSERT INTO <table_name> (name) VALUES ('John');
    ```
- Select data
    ```sql
    SELECT * FROM <table_name>;
    ```
- Exit MySQL
    ```sql
    EXIT;
    ```

### 👉Step 5: Copy database
```bash
mysqldump -u root -p <database_name> > <database_name>.sql # Enter password
```

### 👉Step 6: Reboot database
```bash
sudo systemctl restart MySQL
# sudo service MySQL start
# sudo service MySQL status
```

### 👉Step 7: Clear history
```bash
history -c
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com