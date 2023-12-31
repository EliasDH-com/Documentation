![logo](/Images/logo.png)
# 💙🤍Base Webserver Template CT🤍💙

This document serves as a foundational guide for setting up a webserver using Apache and PHP on a Linux system. It includes essential steps and configurations to establish a functional webserver.

---

## 📘Table of Contents

1. [Introduction](#introduction)
2. [Steps](#steps)
    - [Step 1: Update system](#step-1-update-system)
    - [Step 2: User management](#step-2-user-management)
    - [Step 3: Switch to new user](#step-3-switch-to-new-user)
    - [Step 4: Install SSH](#step-4-install-ssh)
    - [Step 5: Add SSH banner](#step-5-add-ssh-banner)
        - [Banner text example](#banner-text-example)
    - [Step 6: Install Apache and PHP](#step-6-install-apache-and-php)
    - [Step 7: Restart Apache](#step-7-restart-apache)
    - [Step 8: Clear history](#step-8-clear-history) 
3. [Links](#links)

---

## 🖖Introduction

This template provides a structured approach to setting up a basic webserver on a Linux distribution using commonly used packages such as Apache2 and PHP.

## ✨Steps

### 👉 Step 1: Update system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉 Step 2: User management
```bash
sudo adduser <username>
sudo usermod -aG sudo <username>

sudo do-release-upgrade -d # Optional - upgrade to latest Ubuntu LTS
```

### 👉 Step 3: Switch to new user
```bash
su - <username>
```

### 👉 Step 4: Install SSH
```bash
sudo apt install openssh-server
```

### 👉 Step 5: Add SSH banner
```bash
sudo nano /etc/motd # nano | vim | emacs
```
#### 🍳 Banner text example
```text
??????????????????????????????????????????JJJJJJJJJJJJJJJJ??????????????????????????????????????????
??????????????????????????????????JJJJJ???77!!!~~~~~~!!77???JJJJ????????????????????????????????????
??????????????????????????????JJJ??7~^::..               ..:^^~7??JJJ???????????????????????????????
???????????????????????????JJJ7!^:                              .:^!7JJJ????????????????????????????
????????????????????????JJ?7~:                                       :~7?J??????????????????????????
??????????????????????JJ?~:                                             .~?JJ???????????????????????
????????????????????J?!:.                                                 .~?JJ?????????????????????
??????????????????JJ7:                                                       ^7J????????????????????
?????????????????J?^                     ..:^~~~~~~~~^::.                      ~?J??????????????????
????????????????J!.                  .:~7???JJJJJJJJJJJ??7!~:.                  .7J?????????????????
??????????????J?^                 :^!?JJJ????????????????JJJJ?!^.                 ~J????????????????
?????????????J?:                ^7?JJ?????????????????????????JJ?~.                ~J???????????????
????????????J?:               :7JJ????????JJJ????????JJJJ????????J?!.               ~J??????????????
????????????J^              .~?J????????J?7~:.......:^~!7??????????J?^               ~J?????????????
???????????J!               7J????????J?~.              .^7??????????J~               7J????????????
??????????J?.              !J????????J7.             .^!???????????JJJ?.              :?????????????
??????????J~              ^J????????J!            :~7?JJ???????JJJ?7~:                 ?J???????????
???????????.              7J???????J7         .^~7?JJ???????JJ??!^.                .:~7?????????????
?????????J7              .????????J?.      .^!?JJJ??????JJJ?!~:                 :~!?JJJ?????????????
???????????.             .????????J^    :~7?JJ???????JJ?7~:.                .^!7?JJ?????????????????
???????????.             .?????????..:!??JJ??????JJJ?!^.                .^!7?JJJ????????????????????
??????????J^              7J?????????JJJ?????JJJ?7~:.               .:~7?JJJ???????JJ???????????????
??????????J!              7J??????????????JJ?7!^.               .:~7?JJJ???????JJJ?7~::?????????????
????????????.           :!J???????????????7^:                :~!?JJJ????????JJ??!^.   :?????????????
???????????J^       .^!??J?????????????J!.               :~!??JJ????????JJJ?7~:       7J????????????
???????????J7   .:~7?JJJ??????JJJ????????7~:.        .^!??JJJ???????JJJ?7~:.         :J?????????????
?????????????!!!?JJJ???????JJJ?77?JJJ????JJJ?77777777?JJJ???????JJJ?7~:.             7J?????????????
?????????????JJJ????????JJ?7~:.  .:!?JJJ?????JJJJJJJJ??????JJJ??7~:.                ~J??????????????
?????????????????????JJ?7~:          :~7?JJJJ????????JJJJJ?7!^:.                   ^J???????????????
???????????????????J?7~.                .:~7?????????77~^:.                       ~?????????????????
??????????????????J!.                        .::::::.                           :7J?????????????????
????????????????????~.                                                        ^!?J??????????????????
????????????????????J?~.                                                   :~7JJ????????????????????
??????????????????????J?7^                                              .~7?JJ??????????????????????
????????????????????????JJ?~:                                        :~7?JJ?????????????????????????
??????????????????????????JJ?7~^.                                .^!7?JJ????????????????????????????
?????????????????????????????JJJ??7!~^::..                 ..:^!7?JJJ???????????????????????????????
?????????????????????????????????JJJJJJ???77!~~~~~~~!!!!!77??JJJJ???????????????????????????????????
??????????????????????????????????????????JJJJJJJJJJJJJJJJJ?????????????????????????????????????????
????????????????????????????????????????????????????????????????????????????????????????????????????
------------------------------
Welcome to server [webserver]
------------------------------
```

### 👉 Step 6: Install Apache and PHP
```bash
sudo apt install apache2
sudo apt install php libapache2-mod-php php-mysql
```

### 👉 Step 7: Restart Apache
```bash
sudo systemctl restart apache2
```

### 👉 Step 8: Clear history
```bash
history -c
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us eliasdehondt@outlook.com.