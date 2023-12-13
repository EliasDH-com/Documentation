![logo](/Images/logo.png)
# 💙🤍Cisco Terminal Commands🤍💙

This is a list of commands that I use for Cisco devices. I use this list to quickly find the commands I need. I hope this list can help you too. If you have any questions or suggestions, please let me know.

---

## 📘Table of Contents

1. [Introduction](#introduction)
2. [Commands](#commands)
    - [Switch>](#switch)
    - [Switch#](#switch-1)
    - [Switch(config)#](#switchconfig)
    - [Router(config-dn)#](#routerconfig-dn)
    - [Router(config-ephone)#](#routerconfig-ephone)
    - [Router(config-telephony)#](#routerconfig-telephony)
    - [Switch/Router(config-if-range)#](#switchrouterconfig-if-range)
    - [Switch(config-dhcp-class)#](#switchconfig-dhcp-class)
    - [Switch(dhcp-config)#](#switchdhcp-config)
    - [Switch(config-subif)#](#switchconfig-subif)
    - [Switch(config-vlan)#](#switchconfig-vlan)
    - [Switch(config-router)#](#switchconfig-router)
    - [Switch(config-line)#](#switchconfig-line)
    - [Switch(config-if)#](#switchconfig-if)
3. [Links](#links)

---

## 🖖Introduction

Below you will find a list of commands that I use for Cisco devices. End I also added de **Type** dis is the mode you need to be in to use the command. The **Commando** is the command you need to use. The **Explanation** is the explanation of the command.

## ✨Commands

### 👉 Switch>

| Type    | Commando | Explanation                       |
| ------- | -------- | --------------------------------- |
| Switch> |  enable  | Switches to enable mode (switch#) |

### 👉 Switch#

| Type    | Commando                    | Explanation                                    |
| ------- | --------------------------- | ---------------------------------------------- |
| Switch# | configure terminal          | Enter configure mode switch(config)#           |
| Switch# | interfaces fastethernet 0/0 | Displays settings for interface port 0/0       |
| Switch# | show mac-address-table      | Requests MAC address table                     |
| Switch# | clear mac-address-table     | Clears the MAC address table                   |
| Switch# | show vlan brief             | Requests VLAN table on the switch              |
| Switch# | show running-config         | Displays encrypted password from enable secret |
| Switch# | show vlan                   | Lists all VLANs                                |
| Switch# | copy run start              | Saves config to device                         |
| Switch# | show flash                  | Displays flash information                     |
| Switch# | show ip route               | Displays IP routes                             |
| Switch# | show ip protocols           | Displays IP protocols                          |
| Switch# | show ip rip                 | Displays IP rip info                           |
| Switch# | debug ip rip                | Enables debugging of RIP                       |
| Switch# | show ip dhcp binding        | Displays DHCP bindings                         |
| Switch# | erase startup-config        | Deletes all configuration files                |
| Switch# | show vlan                   | Displays VLAN information                      |
| Switch# | show vtp status             | Displays status of VTP protocol                |
| Switch# | show access-lists <i>       | Displays specific access lists                 |
| Switch# | clear ip dhcp binding *     | Clears all DHCP bindings                       |

### 👉 Switch(config)#

| Type            | Commando                                                                       | Explanation                                         |
| --------------- | ------------------------------------------------------------------------------ | --------------------------------------------------- |
| Switch(config)# | interface fastethernet 0/0                                                     | Configures settings for interface 0/0               |
| Switch(config)# | interface vlan <1-4094>                                                        | Enters configuration mode for a specific VLAN       |
| Switch(config)# | ntp server <IP of NTP server>                                                  | Sets the NTP server for time synchronization        |
| Switch(config)# | ip dhcp snooping                                                               | Enables DHCP snooping on the switch                 |
| Switch(config)# | ip dhcp snooping vlan <1-4094>                                                 | Configures DHCP snooping for a specific VLAN        |
| Switch(config)# | ip nat outside                                                                 | Marks an interface as the outside interface for NAT |
| Switch(config)# | ip nat inside source static tcp <IP LAN> <I Port> <IP WAN> <E Port> extendable | Configures static NAT translation for TCP           |
| Switch(config)# | ip nat inside source list 100 <Interface> overload                             | Configures NAT overload                             |
| Switch(config)# | ip dhcp relay information trust-all                                            | Allows trusting of relayed DHCP information         |
| Switch(config)# | enable secret <Password>                                                       | Sets an encrypted password for privileged mode      |
| Switch(config)# | no enable secret                                                               | Removes the encrypted password for privileged mode  |
| Switch(config)# | line with 0                                                                    | Incomplete or incorrect command                     |
| Switch(config)# | line vty 0 15                                                                  | Enters the configuration mode for VTY lines         |
| Switch(config)# | banner motd #Hallo#                                                            | Sets the message-of-the-day banner                  |
| Switch(config)# | no spanning-tree vlan 1                                                        | Disables Spanning Tree Protocol for VLAN 1          |
| Switch(config)# | hostname <Name>                                                                | Configures the device hostname                      |
| Switch(config)# | ip route <IP NET> <Mask> <IP NIC>                                              | Sets up a static IP route                           |
| Switch(config)# | router rip                                                                     | Enters the RIP routing protocol configuration mode  |
| Switch(config)# | vlan <1-4094>                                                                  | Creates a VLAN                                      |
| Switch(config)# | interface fastEthernet 0/0.1                                                   | Configures a subinterface for FastEthernet 0/0      |
| Switch(config)# | vtp domain <name van domain>                                                   | Configures the VTP domain                           |
| Switch(config)# | vtp mode <client & server>                                                     | Sets the VTP mode                                   |
| Switch(config)# | ip dhcp pool <Pool name>                                                       | Creates a DHCP address pool                         |
| Switch(config)# | ip dhcp excluded (IPx-IPy)                                                     | Excludes IP addresses from DHCP allocation          |
| Switch(config)# | ip dhcp class <Class name>                                                     | Configures a DHCP class                             |
| Switch(config)# | interface range fastethernet 0/<x-y>                                           | Enters configuration mode for a range of interfaces |
| Switch(config)# | telephony-service                                                              | Enters telephony service configuration mode         |
| Switch(config)# | ephone <1-50>                                                                  | Enters ephone configuration mode                    |
| Switch(config)# | ephone-dn 1                                                                    | Enters ephone-dn configuration mode                 |
| Switch(config)# | access-list <i>                                                                | Enters access-list configuration mode               |

### 👉 Router(config-dn)#

| Type               | Commando   | Explanation                     |
| ------------------ | ---------- | ------------------------------- |
| Router(config-dn)# | number <i> | You give a number to your phone |

### 👉 Router(config-ephone)# 

| Type                   | Commando                | Explanation                                                 |
| ---------------------- | ----------------------- | ----------------------------------------------------------- |
| Router(config-ephone)# | type 7960               | You set the type of phone                                   |
| Router(config-ephone)# | mac-address <MAC Phone> | You link the mac address of the phone to the digital label  |

### 👉 Router(config-telephony)#

| Type                      | Commando                                        | Explanation                                                                             |
| ------------------------- | ----------------------------------------------- | --------------------------------------------------------------------------------------- |
| Router(config-telephony)# | max ephones 2                                   | Limits the maximum number of ephones (2)                                                |
| Router(config-telephony)# | max-dn 2                                        | Limits the maximum number of directory numbers (2)                                      |
| Router(config-telephony)# | ip source-address <IP fo TFTP server> port 2000 | Sets the IP&Port of the TFTP server to be used (telephony services configuration files) |
| Router(config-telephony)# | create cnf-files                                | Initiates the creation of the configuration files for Cisco IP Phones                   |

### 👉 Switch/Router(config-if-range)#

| Type                    | Commando                          | Explanation                                 |
| ----------------------- | --------------------------------- | ------------------------------------------- |
| Switch(config-if-range) | switchport mode access            | Sets the interface to access mode           |
| Switch(config-if-range) | switchport access vlan <1-4094>   | Sets the VLAN for the interface             |
| Router(config-if-range) | switchport voice vlan <1 to 4094> | Sets the VLAN for the interface (for voice) |

### 👉 Switch(config-dhcp-class)#

| Type                       | Commando                | Explanation                          |
| -------------------------- | ----------------------- | ------------------------------------ |
| Switch(config-dhcp-class)# | address range <IPx-IPy> | Sets the address range for the class |


### 👉 Switch(dhcp-config)#

| Type                 | Commando                       | Explanation                           |
| -------------------- | ------------------------------ | ------------------------------------- |
| Switch(dhcp-config)# | network <IP> <Mask>            | Sets the network for the class        |
| Switch(dhcp-config)# | default-router <IP>            | Sets the default router for the class |
| Switch(dhcp-config)# | dns-server <IP>                | Sets the DNS server for the class     |
| Switch(dhcp-config)# | option 150 ip <IP>             | Sets the TFTP server for the class    |
| Switch(dhcp-config)# | lease <days> <hours> <minutes> | Sets the lease time for the class     |

### 👉 Switch(config-subif)#

| Type                 | Commando                       | Explanation                              |
| -------------------- | ------------------------------ | ---------------------------------------- |
| Switch(config-subif) | encapsulation dot1q <VLAN ID>  | Sets the VLAN ID for the subinterface    |
| Switch(config-subif) | ip address <IP> <Mask>         | Sets the IP address for the subinterface |

### 👉 Switch(config-vlan)#

| Type               | Commando    | Explanation                |
| ------------------ | ----------- | -------------------------- |
| Switch(config-vlan)| name <Name> | Sets the name for the VLAN |

### 👉 Switch(config-router)#

| Type                  | Commando                           | Explanation                        |
| --------------------- | ---------------------------------- | ---------------------------------- |
| Switch(config-router) | passive-interface fastethernet 9/0 | Sets the interface to passive mode |

### 👉 Switch(config-line)#

| Type                | Commando            | Explanation                           |
| ------------------- | ------------------- | ------------------------------------- |
| Switch(config-line) | password <Password> | Sets the password for the line        |
| Switch(config-line) | login               | Enables login for the line            |
| Switch(config-line) | exec-timeout 0 0    | Sets the exec timeout for the line    |
| Switch(config-line) | history size 0      | Sets the history size for the line    |
| Switch(config-line) | transport input ssh | Sets the transport input for the line |

### 👉 Switch(config-if)#

| Type              | Commando                                                                       | Explanation                               |
| ----------------- | ------------------------------------------------------------------------------ | ----------------------------------------- |
| Switch(config-if) | speed 100                                                                      | Sets the speed for the interface          |
| Switch(config-if) | duplex full                                                                    | Sets the duplex for the interface         |
| Switch(config-if) | duplex half                                                                    | Sets the duplex for the interface         |
| Switch(config-if) | no shutdown                                                                    | Enables the interface                     |
| Switch(config-if) | shutdown                                                                       | Disables the interface                    |
| Switch(config-if) | ip address <IP> <Mask>                                                         | Sets the IP address for the interface     |
| Switch(config-if) | ip dhcp snooping trust                                                         | Sets the interface to trust DHCP snooping |
| Switch(config-if) | ip helper-address <IP>                                                         | Sets the IP address for the interface     |
| Switch(config-if) | switchport access vlan <1-4094>                                                | Sets the VLAN for the interface           |
| Switch(config-if) | switchport mode access                                                         | Sets the interface to access mode         |
| Switch(config-if) | switchport mode trunk                                                          | Sets the interface to trunk mode          |
| Switch(config-if) | ip access-group <i> in                                                         | Sets the access-group for the interface   |
| Switch(config-if) | ip access-group <i> out                                                        | Sets the access-group for the interface   |
| Switch(config-if) | ip nat inside                                                                  | Marks the interface as inside for NAT     |
| Switch(config-if) | ip nat outside                                                                 | Marks the interface as outside for NAT    |
| Switch(config-if) | ip access-class <i> in                                                         | Sets the access-class for the interface   |
| Switch(config-if) | ip access-class <i> out                                                        | Sets the access-class for the interface   |
| Switch(config-if) | ip nat inside source list 100                                                  | Sets the access-list for NAT              |
| Switch(config-if) | ip nat inside source list 100 interface fastethernet 0/0                       | Sets the access-list for NAT              |
| Switch(config-if) | ip nat inside source static tcp <IP LAN> <I Port> <IP WAN> <E Port> extendable | Configures static NAT translation for TCP |
| Switch(config-if) | ip nat inside source static udp <IP LAN> <I Port> <IP WAN> <E Port> extendable | Configures static NAT translation for UDP |


## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us eliasdehondt@outlook.com.