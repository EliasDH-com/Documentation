![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍TCP And UDP Ports🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Ports](#✨ports)
    1. [👉Well-known Ports](#👉well-known-ports)
    2. [👉Registered Ports](#👉registered-ports)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

Port numbers can run from **0** to **65353**.

- **Well-known Ports** in the range **0** to **1023** are assigned and controlled. 
- **Registered Ports** in the range **1024** to **49151** are not assigned or controlled but can be registered to prevent duplication. 
- **Dynamic Ports** in the range **49152** to **65535** are not assigned, controlled, or registered. They are used for temporary or private ports. They are also known as private or non-reserved ports. Clients should choose ephemeral port numbers from this range, but many systems do not. 

## ✨Ports

### 👉Well-known Ports

| Port | Protocol  | TCP | UDP | Description                                                   |
| ---- | --------- | --- | --- | ------------------------------------------------------------- |
| 20   | FTP       | Yes | No  | File Transfer Protocol (FTP) Data Transfer                    |
| 21   | FTP       | Yes | No  | File Transfer Protocol (FTP) Control                          |
| 22   | SSH       | Yes | Yes | Secure Shell (SSH)                                            |
| 23   | Telnet    | Yes | No  | Telnet                                                        |
| 25   | SMTP      | Yes | No  | Simple Mail Transfer Protocol (SMTP)                          |
| 53   | DNS       | Yes | Yes | Domain Name System (DNS)                                      |
| 67   | DHCP      | No  | Yes | Dynamic Host Configuration Protocol (DHCP) Server             |
| 68   | DHCP      | No  | Yes | Dynamic Host Configuration Protocol (DHCP) Client             |
| 69   | TFTP      | Yes | Yes | Trivial File Transfer Protocol (TFTP)                         |
| 80   | HTTP      | Yes | No  | Hypertext Transfer Protocol (HTTP)                            |
| 88   | Kerberos  | Yes | No  | Kerberos                                                      |
| 109  | POP2      | Yes | No  | Post Office Protocol version 2 (POP2)                         |
| 110  | POP3      | Yes | No  | Post Office Protocol version 3 (POP3)                         |
| 123  | NTP       | Yes | Yes | Network Time Protocol (NTP)                                   |
| 137  | NetBIOS   | No  | Yes | NetBIOS Name Service                                          |
| 138  | NetBIOS   | No  | Yes | NetBIOS Datagram Service                                      |
| 139  | NetBIOS   | Yes | No  | NetBIOS Session Service                                       |
| 143  | IMAP      | Yes | No  | Internet Message Access Protocol (IMAP)                       |
| 161  | SNMP      | No  | Yes | Simple Network Management Protocol (SNMP)                     |
| 162  | SNMP-trap | No  | Yes | Simple Network Management Protocol (SNMP) Trap                |
| 389  | LDAP      | Yes | No  | Lightweight Directory Access Protocol (LDAP)                  |
| 443  | HTTPS     | Yes | No  | Hypertext Transfer Protocol over SSL/TLS (HTTPS)              |
| 445  | SMB       | Yes | No  | Server Message Block (SMB) over IP                            |
| 546  | DHCPv6    | No  | Yes | Dynamic Host Configuration Protocol version 6 (DHCPv6) Client |
| 547  | DHCPv6    | No  | Yes | Dynamic Host Configuration Protocol version 6 (DHCPv6) Server |
| 587  | SMTP      | Yes | No  | Simple Mail Transfer Protocol over TLS/SSL (SMTPS)            |
| 990  | FTPs      | Yes | No  | File Transfer Protocol (FTP) over TLS/SSL (FTPS)              |
| 992  | Telnets   | Yes | No  | Telnet over TLS/SSL (TelnetS)                                 |
| 993  | IMAPs     | Yes | No  | Internet Message Access Protocol over TLS/SSL (IMAPS)         |
| 995  | POP3s     | Yes | No  | Post Office Protocol version 3 over TLS/SSL (POP3S)           |

### 👉Registered Ports
| Port | Protocol  | TCP | UDP | Description                                                   |
| ---- | --------- | --- | --- | ------------------------------------------------------------- |
| 3306 | MySQL     | Yes | No  | MySQL                                                         |
| 3389 | RDP       | Yes | No  | Remote Desktop Protocol (RDP)                                 |
| 5432 | PostgreSQL| Yes | No  | PostgreSQL                                                    |
| 8080 | HTTP      | Yes | No  | Hypertext Transfer Protocol (HTTP)                            |

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com