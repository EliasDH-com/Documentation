![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Base Mailcow Config🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Steps](#✨steps)
    1. [👉Step 1: Update and upgrade the system](#👉step-1-update-and-upgrade-the-system)
    2. [👉Step 2: Preparations](#👉step-2-preparations)
    3. [👉Step 3: Install the packages needed for future installations](#👉step-3-install-the-packages-needed-for-future-installations)
    4. [👉Step 4: Install Docker and Docker Compose](#👉step-4-install-docker-and-docker-compose)
    5. [👉Step 5: Install Mailcow](#👉step-5-install-mailcow)
    6. [👉Step 6: Configure Mailcow](#👉step-6-configure-mailcow)
    7. [👉Step 7: Configure DKIM](#👉step-7-configure-dkim)
    8. [👉Step 8: Using the Webmail Client "SOGo"](#👉step-8-using-the-webmail-client-sogo)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

This tutorial explains how to install Mailcow on Ubuntu 20.04 LTS. Mailcow is a free and open source mail server software. It is based on Docker and Docker Compose and thus consists of several Docker containers. Mailcow supports the protocols SMTP, POP3, IMAP, EAS, CalDAV, CardDAV, LDAP, Rspamd, Sieve, JMAP and ActiveSync. Mailcow also supports the use of SSL certificates and the use of DKIM, DMARC and SPF. Mailcow is very easy to install and configure. The installation and configuration of Mailcow is explained in this tutorial.

## ✨Steps

### 👉Step 1: Update and upgrade the system
```bash
sudo apt update && sudo apt upgrade -y
```

### 👉Step 2: Preparations
Before you can start installing Mailcow, you need to do some preparations, which mainly affect the DNS settings of the domain that you want to use to receive and send e-mails. To do this, follow the steps below:

- The hostname of your server should be "mail", so the FQDN should be "mail.eliasdh.com" (replace "eliasdh.com" with your own domain name).

- Add an A record for the subdomain "mail" (mail.eliasdh.com) and let this point to the IP address of the mail server.

- Add an MX record for your domain and set the value to the mail subdomain you just created (mail.eliasdh.com) with priority 10.

- Define a CNAME record for the subdomains "autodiscover" as well as "autoconfig" and set the destination of both CNAME records to the mail subdomain as well (mail.eliasdh.com).

- Add an TXT record for your domain and set the value to "v=spf1 mx ~all", to allow the server specified in the MX record (the mail server where Mailcow will be installed) to send e-mails with your domain as the sender domain. The "~all" means that other servers are not allowed to send e-mails from your domain, but these e-mails will still be delivered (softfail).

- Define a PTR record (Reverse DNS) for the IP address of your server and set the value to the FQDN of your server ("mail.eliasdh.com"). You can set this PTR record directly in the web interface of any good hoster like Contabo. For some providers, you have to write an e-mail or open a support ticket.

### 👉Step 3: Install the packages needed for future installations
```bash
sudo apt install curl nano git apt-transport-https ca-certificates gnupg2 software-properties-common -y
```

### 👉Step 4: Install Docker and Docker Compose
```bash
# Use the following command to add the key needed for the Docker repository: 
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add the repository needed to install Docker by executing this command: 
sudo echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list 

# Update the package list:
sudo apt update

# Install Docker:
sudo apt install docker-ce docker-ce-cli -y

# Now download Docker Compose with the command:
sudo curl -L https://github.com/docker/compose/releases/download/$(curl -Ls https://www.servercow.de/docker-compose/latest.php)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose

# Now give Docker compose the necessary permissions to read and execute commands with the following command:
sudo chmod +x /usr/local/bin/docker-compose 
```

### 👉Step 5: Install Mailcow
```bash
cd /opt
sudo git clone https://github.com/mailcow/mailcow-dockerized
cd mailcow-dockerized
sudo ./generate_config.sh # Enter the FQDN of your server (mail.eliasdh.com)
```

Mailcow automatically requests a Let's Encrypt SSL certificate for the domain you specified as the hostname ("acme-mailcow" container), unless this feature has been explicitly disabled within the configuration file. Thus, you can visit the Mailcow web interface via HTTPS. To automatically redirect HTTP requests to HTTPS, perform the following steps: 

- Create an Nginx configuration file using the command:
```bash
sudo nano /opt/mailcow-dockerized/data/conf/nginx/redirect.conf 
```
- Add the following content to this configuration file: 
```text
server { 
    root /web; 
    listen 80 default_server; 
    listen [::]:80 default_server; 
    include /etc/nginx/conf.d/server_name.active; 
    if ( $request_uri ~* "%0A|%0D" ) { return 403; } 

    location ^~ /.well-known/acme-challenge/ { 
        allow all; 
        default_type "text/plain"; 
    } 
    location / { 
        return 301 https://$host$uri$is_args$args; 
    }
}
```
Save the changes to this configuration file by pressing CTRL + X, then hit the "Y" key followed by enter.
Now restart Nginx. To do this, use the command:
```bash
sudo docker-compose restart nginx-mailcow
```

### 👉Step 6: Configure Mailcow
- Open the Mailcow web interface under the domain of your server in your web browser via HTTPS. (e.g. "https://mail.eliasdh.com").

- Log in with the username "admin" and the default password "moohoo". 

- Click on "Edit" right next to the "admin" user under "Edit administrator details".

- Change the password of the administrator user. You can also change the username if you want. After you've done this, click on the "Save changes" button.

- Click on "Configuration" in the top menu and then click on "Mail Setup" to switch to the mail configuration.

- The tab "Domains" is already selected. Add your domain by clicking on the "Add domain" button. In the dialog that appears, enter the domain in the "Domain" text box and a description in the "Description" text box. You can change the rest of the settings (e.g. the maximum amount of possible mailboxes or the mailbox quota), but the default values should be fine in most cases. Next, click on the button called "Add domain and restart SOGo".

- Switch to the "Mailboxes" tab and add a new mailbox by clicking on "Add mailbox". You have to enter the following information:
    - Username: Left part of the e-mail address (before the "@")
    - Domain: Domain to which the mailbox belongs.
    - Full name: First and last name of the mailbox user.
    - Quota (MiB): Quota of this mailbox (default 3072 MiB)
    - Password: Password of the mailbox user.

- Then click on the "Add" button to create the mailbox.

- Mailcow is now basically set up. However, it's recommended to perform further configurations such as the DKIM configuration. The DKIM configuration is explained in the next step of this tutorial. For further information, the Mailcow documentation is very helpful.

### 👉Step 7: Configure DKIM
- Log in to the Mailcow web interface and click on "Configuration" at the top menu. Then click on "Configuration & Details". 

- Click on the "Configuration" tab and then on "ARC/DKIM keys" 

- For each configured domain, a DKIM key with the selector "dkim" and a key length of 2048 bits is already generated automatically. Copy the contents of the text box above (public key matching the domain, starting with "v=DKIM1;k=rsa;t=s;s=email;p=") under "ARC/DKIM keys".

- Finally, add a TXT record for "dkim._domainkey.eliasdh.com" (matching the DKIM selector) in your domain's DNS settings and set the previously copied content from the text box as the value of this TXT record.

### 👉Step 8: Using the Webmail Client "SOGo"
Of course, you can use mail clients like Thunderbird or Outlook, but Mailcow also offers it's own webmail client. Using this webmail client, you can also read your e-mails directly in the browse:

- In the top menu of the Mailcow web interface, click on "Apps" and then click on "Webmail" or open the webmail client directly by appending "/SOGo" to the domain of your server.

- Now log in to the webmail client. Enter the complete e-mail address of the mailbox as user name and enter the corresponding password. 

- You should already see an e-mail in the inbox, because a personal calendar was automatically created for you. Now you can use the SOGo webmail client.

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com