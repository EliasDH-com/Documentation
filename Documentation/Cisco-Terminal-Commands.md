![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Cisco Terminal Commands🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [✨Commands](#✨commands)
    1. [👉Switch>](#👉switch)
    2. [👉Switch#](#👉switch)
    3. [👉Switch(config)#](#👉switchconfig)
    4. [👉Router(config-dn)#](#👉routerconfig-dn)
    5. [👉Router(config-ephone)#](#👉routerconfig-ephone)
    6. [👉Router(config-telephony)#](#👉routerconfig-telephony)
    7. [👉Switch/Router(config-if-range)#](#👉switchrouterconfig-if-range)
    8. [👉Switch(config-dhcp-class)#](#👉switchconfig-dhcp-class)
    9. [👉Switch(dhcp-config)#](#👉switchdhcp-config)
    10. [👉Switch(config-subif)#](#👉switchconfig-subif)
    11. [👉Switch(config-vlan)#](#👉switchconfig-vlan)
    12. [👉Switch(config-router)#](#👉switchconfig-router)
    13. [👉Switch(config-line)#](#👉switchconfig-line)
    14. [👉Switch(config-if)#](#👉switchconfig-if)
4. [🚪ACL](#🚪acl)
    1. [🎨Example](#🎨example)
    2. [📜ACL Numbers](#📜acl-numbers)
5. [🔗Links](#🔗link)

---

## 🖖Introduction

Below you will find a list of commands that I use for Cisco devices. End I also added de **Type** dis is the mode you need to be in to use the command. The **Commando** is the command you need to use. The **Explanation** is the explanation of the command.

## ✨Commands

### 👉Switch>

| Type    | Commando | Explanation                       |
| ------- | -------- | --------------------------------- |
| Switch> |  enable  | Switches to enable mode (switch#) |
| Switch> |  show    | Requests information              |
| Switch> |  copy    | Copies a file                     |
| Switch> |  dir     | Displays directory information    |
| Switch> |  reload  | Reloads the switch                |
| Switch> |  erase   | Erases a file                     |
| Switch> |  delete  | Deletes a file                    |

### 👉Switch#

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
| Switch# | show ip interface brief     | Displays IP interface information              |
| Switch# | show ip nat translations    | Displays NAT translations                      |
| Switch# | show ip nat statistics      | Displays NAT statistics                        |

### 👉Switch(config)#

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
| Switch(config)# | spanning-tree vlan <VLAN ID> priority <priority>                               | Setting priority of VLAN in Spanning Tree Protocol. |
| Switch(config)# | snmp-server community <community string> RO                                    | Configures SNMP community string                    |
| Switch(config)# | snmp-server location <location>                                                | Configures SNMP location                            |
| Switch(config)# | snmp-server contact <contact>                                                  | Configures SNMP contact                             |
| Switch(config)# | snmp-server enable traps                                                       | Enables SNMP traps                                  |
| Switch(config)# | snmp-server host <IP> <community string>                                       | Configures SNMP host                                |
| Switch(config)# | snmp-server ifindex persist                                                    | Persists SNMP ifindex                               |

### 👉Router(config-dn)#

| Type               | Commando                           | Explanation                          |
| ------------------ | ---------------------------------- | ------------------------------------ |
| Router(config-dn)# | number <i>                         | You give a number to your phone      |
| Router(config-dn)# | name <Name>                        | You give a name to your phone        |
| Router(config-dn)# | label <Name>                       | You give a label to your phone       |
| Router(config-dn)# | call-forward all <i> <Number>      | You set a call-forward for the phone |
| Router(config-dn)# | call-forward noan <i> <Number>     | You set a call-forward for the phone |
| Router(config-dn)# | call-forward busy <i> <Number>     | You set a call-forward for the phone |
| Router(config-dn)# | call-forward noanswer <i> <Number> | You set a call-forward for the phone |
| Router(config-dn)# | call-forward timeout <i> <Number>  | You set a call-forward for the phone |
| Router(config-dn)# | call-forward night-service <i>     | You set a call-forward for the phone |

### 👉 Router(config-ephone)# 

| Type                   | Commando                | Explanation                                                 |
| ---------------------- | ----------------------- | ----------------------------------------------------------- |
| Router(config-ephone)# | type 7960               | You set the type of phone                                   |
| Router(config-ephone)# | mac-address <MAC Phone> | You link the mac address of the phone to the digital label  |
| Router(config-ephone)# | button <i> <i>          | You link the number of the phone to the digital label       |
| Router(config-ephone)# | description <Name>      | You give a name to the phone                                |
| Router(config-ephone)# | speed-dial <i> <Number> | You set a speed dial for the phone                          |
| Router(config-ephone)# | paging-dn <i>           | You set a paging number for the phone                       |
| Router(config-ephone)# | park <i>                | You set a park number for the phone                         |
| Router(config-ephone)# | intercom <i>            | You set an intercom number for the phone                    |
| Router(config-ephone)# | auto-line <i>           | You set an auto-line number for the phone                   |

### 👉Router(config-telephony)#

| Type                      | Commando                                        | Explanation                                                                             |
| ------------------------- | ----------------------------------------------- | --------------------------------------------------------------------------------------- |
| Router(config-telephony)# | max ephones 2                                   | Limits the maximum number of ephones (2)                                                |
| Router(config-telephony)# | max-dn 2                                        | Limits the maximum number of directory numbers (2)                                      |
| Router(config-telephony)# | ip source-address <IP fo TFTP server> port 2000 | Sets the IP&Port of the TFTP server to be used (telephony services configuration files) |
| Router(config-telephony)# | create cnf-files                                | Initiates the creation of the configuration files for Cisco IP Phones                   |
| Router(config-telephony)# | load 7960-7940 P00307020200                     | Loads the firmware for the Cisco IP Phones                                              |
| Router(config-telephony)# | time-zone 1 0                                   | Sets the time zone for the Cisco IP Phones                                              |
| Router(config-telephony)# | voicemail 6000                                  | Sets the voicemail number for the Cisco IP Phones                                       |
| Router(config-telephony)# | max-conferences 8                               | Limits the maximum number of conferences (8)                                            |
| Router(config-telephony)# | transfer-system full-consult                    | Sets the transfer system for the Cisco IP Phones                                        |
| Router(config-telephony)# | transfer-pattern 9.T                            | Sets the transfer pattern for the Cisco IP Phones                                       |

### 👉Switch/Router(config-if-range)#

| Type                    | Commando                          | Explanation                                 |
| ----------------------- | --------------------------------- | ------------------------------------------- |
| Switch(config-if-range) | switchport mode access            | Sets the interface to access mode           |
| Switch(config-if-range) | switchport access vlan <1-4094>   | Sets the VLAN for the interface             |
| Router(config-if-range) | switchport voice vlan <1 to 4094> | Sets the VLAN for the interface (for voice) |

### 👉Switch(config-dhcp-class)#

| Type                       | Commando                | Explanation                          |
| -------------------------- | ----------------------- | ------------------------------------ |
| Switch(config-dhcp-class)# | address range <IPx-IPy> | Sets the address range for the class |
| Switch(config-dhcp-class)# | default                 | Sets the default class               |
| Switch(config-dhcp-class)# | exit                    | Exits the class configuration mode   |
| Switch(config-dhcp-class)# | no address range        | Removes the address range            |
| Switch(config-dhcp-class)# | no default              | Removes the default class            |
| Switch(config-dhcp-class)# | no network              | Removes the network                  |
| Switch(config-dhcp-class)# | no option 150           | Removes the TFTP server              |
| Switch(config-dhcp-class)# | no lease                | Removes the lease time               |
| Switch(config-dhcp-class)# | no dns-server           | Removes the DNS server               |
| Switch(config-dhcp-class)# | no default-router       | Removes the default router           |

### 👉Switch(dhcp-config)#

| Type                 | Commando                       | Explanation                           |
| -------------------- | ------------------------------ | ------------------------------------- |
| Switch(dhcp-config)# | network <IP> <Mask>            | Sets the network for the class        |
| Switch(dhcp-config)# | default-router <IP>            | Sets the default router for the class |
| Switch(dhcp-config)# | dns-server <IP>                | Sets the DNS server for the class     |
| Switch(dhcp-config)# | option 150 ip <IP>             | Sets the TFTP server for the class    |
| Switch(dhcp-config)# | lease <days> <hours> <minutes> | Sets the lease time for the class     |

### 👉Switch(config-subif)#

| Type                 | Commando                                                                       | Explanation                                  |
| -------------------- | ------------------------------------------------------------------------------ | -------------------------------------------- |
| Switch(config-subif) | encapsulation dot1q <VLAN ID>                                                  | Sets the VLAN ID for the subinterface        |
| Switch(config-subif) | ip address <IP> <Mask>                                                         | Sets the IP address for the subinterface     |
| Switch(config-subif) | no shutdown                                                                    | Enables the subinterface                     |
| Switch(config-subif) | shutdown                                                                       | Disables the subinterface                    |
| Switch(config-subif) | ip helper-address <IP>                                                         | Sets the IP address for the subinterface     |
| Switch(config-subif) | ip dhcp relay information trust-all                                            | Allows trusting of relayed DHCP information  |
| Switch(config-subif) | ip dhcp snooping trust                                                         | Sets the interface to trust DHCP snooping    |
| Switch(config-subif) | ip dhcp snooping vlan <1-4094>                                                 | Configures DHCP snooping for a specific VLAN |
| Switch(config-subif) | ip nat inside                                                                  | Marks the interface as inside for NAT        |
| Switch(config-subif) | ip nat outside                                                                 | Marks the interface as outside for NAT       |
| Switch(config-subif) | ip access-class <i> in                                                         | Sets the access-class for the interface      |
| Switch(config-subif) | ip access-class <i> out                                                        | Sets the access-class for the interface      |
| Switch(config-subif) | ip nat inside source list 100                                                  | Sets the access-list for NAT                 |
| Switch(config-subif) | ip nat inside source list 100 interface fastethernet 0/0                       | Sets the access-list for NAT                 |
| Switch(config-subif) | ip nat inside source static tcp <IP LAN> <I Port> <IP WAN> <E Port> extendable | Configures static NAT translation for TCP    |
| Switch(config-subif) | ip nat inside source static udp <IP LAN> <I Port> <IP WAN> <E Port> extendable | Configures static NAT translation for UDP    |

### 👉Switch(config-vlan)#

| Type               | Commando                            | Explanation                                   |
| ------------------ | ----------------------------------- | --------------------------------------------- |
| Switch(config-vlan)| name <Name>                         | Sets the name for the VLAN                    |
| Switch(config-vlan)| no name                             | Removes the name for the VLAN                 |
| Switch(config-vlan)| no vlan <1-4094>                    | Removes the VLAN                              |
| Switch(config-vlan)| vlan <1-4094>                       | Enters configuration mode for a specific VLAN |
| Switch(config-vlan)| exit                                | Exits the VLAN configuration mode             |
| Switch(config-vlan)| no shutdown                         | Enables the VLAN                              |
| Switch(config-vlan)| shutdown                            | Disables the VLAN                             |
| Switch(config-vlan)| ip address <IP> <Mask>              | Sets the IP address for the VLAN              |
| Switch(config-vlan)| ip helper-address <IP>              | Sets the IP address for the VLAN              |
| Switch(config-vlan)| ip dhcp relay information trust-all | Allows trusting of relayed DHCP information   |
| Switch(config-vlan)| ip dhcp snooping trust              | Sets the interface to trust DHCP snooping     |
| Switch(config-vlan)| ip dhcp snooping vlan <1-4094>      | Configures DHCP snooping for a specific VLAN  |
| Switch(config-vlan)| ip nat inside                       | Marks the interface as inside for NAT         |

### 👉Switch(config-router)#

| Type                  | Commando                              | Explanation                                        |
| --------------------- | ------------------------------------- | -------------------------------------------------- |
| Switch(config-router) | passive-interface fastethernet 9/0    | Sets the interface to passive mode                 |
| Switch(config-router) | no passive-interface fastethernet 9/0 | Sets the interface to active mode                  |
| Switch(config-router) | network <IP> <Mask>                   | Sets the network for the router                    |
| Switch(config-router) | no network <IP> <Mask>                | Removes the network for the router                 |
| Switch(config-router) | no auto-summary                       | Disables automatic summarization                   |
| Switch(config-router) | no ip classless                       | Disables classless IP routing                      |
| Switch(config-router) | ip classless                          | Enables classless IP routing                       |
| Switch(config-router) | ip route <IP NET> <Mask> <IP NIC>     | Sets up a static IP route                          |
| Switch(config-router) | router rip                            | Enters the RIP routing protocol configuration mode |
| Switch(config-router) | no router rip                         | Exits the RIP routing protocol configuration mode  |
| Switch(config-router) | version 2                             | Sets the RIP version to 2                          |
| Switch(config-router) | no version 2                          | Sets the RIP version to 1                          |
| Switch(config-router) | network <IP>                          | Sets the network for the router                    |
| Switch(config-router) | no network <IP>                       | Removes the network for the router                 |
| Switch(config-router) | passive-interface fastethernet 9/0    | Sets the interface to passive mode                 |
| Switch(config-router) | no passive-interface fastethernet 9/0 | Sets the interface to active mode                  |
| Switch(config-router) | no auto-summary                       | Disables automatic summarization                   |

### 👉Switch(config-line)#

| Type                | Commando                  | Explanation                               |
| ------------------- | ------------------------- | ----------------------------------------- |
| Switch(config-line) | password <Password>       | Sets the password for the line            |
| Switch(config-line) | login                     | Enables login for the line                |
| Switch(config-line) | exec-timeout 0 0          | Sets the exec timeout for the line        |
| Switch(config-line) | history size 0            | Sets the history size for the line        |
| Switch(config-line) | transport input ssh       | Sets the transport input for the line     |
| Switch(config-line) | no password               | Removes the password for the line         |
| Switch(config-line) | no login                  | Disables login for the line               |
| Switch(config-line) | no exec-timeout           | Removes the exec timeout for the line     |
| Switch(config-line) | no history size           | Removes the history size for the line     |
| Switch(config-line) | no transport input        | Removes the transport input for the line  |
| Switch(config-line) | no transport input ssh    | Removes the transport input for the line  |
| Switch(config-line) | no transport input telnet | Removes the transport input for the line  |
| Switch(config-line) | transport input all       | Sets the transport input for the line     |
| Switch(config-line) | transport input none      | Removes the transport input for the line  |
| Switch(config-line) | transport input ssh       | Sets the transport input for the line     |
| Switch(config-line) | transport input telnet    | Sets the transport input for the line     |
| Switch(config-line) | transport output all      | Sets the transport output for the line    |
| Switch(config-line) | transport output none     | Removes the transport output for the line |
| Switch(config-line) | transport output ssh      | Sets the transport output for the line    |
| Switch(config-line) | transport output telnet   | Sets the transport output for the line    |

### 👉Switch(config-if)#

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

## 🚪ACL

| Type | Commando | Explanation |
| ---- | -------- | ----------- |
| ACL  | permit   | Allows      |
| ACL  | deny     | Denies      |

### 🎨Example

1. Set up an ACL on the router that ensures that the router can ping the PC, but the PC not to a router. Enter all the commands you can use to achieve this (there must be 4!):
    ```bash
    access-list 100 permit icmp host <IP PC> host <IP Router>
    access-list 100 deny icmp host <IP PC> host <IP Router>
    access-list 100 permit icmp host <IP Router> host <IP PC>
    access-list 100 deny icmp host <IP Router> host <IP PC>
    ```

2. Set up an ACL on the router that ensures that the router can ping the PC, but the PC not to a router. Enter all the commands you can use to achieve this (there must be 4!):
    ```bash
    access-list 100 permit icmp host <IP Router> host <IP PC>
    access-list 100 deny icmp host <IP Router> host <IP PC>
    access-list 100 permit icmp host <IP PC> host <IP Router>
    access-list 100 deny icmp host <IP PC> host <IP Router>
    ```

3. Set up an ACL on the router that ensures that the router can ping the PC, but the PC not to a router. Enter all the commands you can use to achieve this (there must be 4!):
    ```bash
    access-list 100 permit icmp host <IP Router> host <IP PC>
    access-list 100 deny icmp host <IP Router> host <IP PC>
    access-list 100 permit icmp host <IP PC> host <IP Router>
    access-list 100 deny icmp host <IP PC> host <IP Router>
    ```

### 📜ACL Numbers
- **Standard ACL**: 1-99
- **Standard ACL**: 1-99
- **Extended ACL**: 100-199
- **Named ACL**: 2000-2699
- **Dynamic ACL**: 3000-3999
- **Reflexive ACL**: 4000-4999
- **Time-based ACL**: 5000-5999
- **IPv6 ACL**: 6000-6999
- **IPv6 Extended ACL**: 7000-7999
- **IPv6 Named ACL**: 8000-8999
- **IPv6 Standard ACL**: 9000-9999
- **IPv6 Extended Named ACL**: 10000-10999
- **IPv6 Standard Named ACL**: 11000-11999
- **IPv6 Time-based ACL**: 12000-12999
- **IPv6 Reflexive ACL**: 13000-13999
- **IPv6 Dynamic ACL**: 14000-14999
- **IPv6 Extended Dynamic ACL**: 15000-15999
- **IPv6 Named Dynamic ACL**: 16000-16999
- **IPv6 Standard Dynamic ACL**: 17000-17999
- **IPv6 Extended Named Dynamic ACL**: 18000-18999
- **IPv6 Standard Named Dynamic ACL**: 19000-19999
- **IPv6 Time-based Dynamic ACL**: 20000-20999
- **IPv6 Reflexive Dynamic ACL**: 21000-21999
- **IPv6 Extended Time-based ACL**: 22000-22999
- **IPv6 Named Time-based ACL**: 23000-23999
- **IPv6 Standard Time-based ACL**: 24000-24999
- **IPv6 Extended Named Time-based ACL**: 25000-25999
- **IPv6 Standard Named Time-based ACL**: 26000-26999
- **IPv6 Extended Reflexive ACL**: 27000-27999
- **IPv6 Named Reflexive ACL**: 28000-28999
- **IPv6 Standard Reflexive ACL**: 29000-29999
- **IPv6 Extended Named Reflexive ACL**: 30000-30999
- **IPv6 Standard Named Reflexive ACL**: 31000-31999
- **IPv6 Extended Dynamic Reflexive ACL**: 32000-32999
- **IPv6 Named Dynamic Reflexive ACL**: 33000-33999
- **IPv6 Standard Dynamic Reflexive ACL**: 34000-34999
- **IPv6 Extended Named Dynamic Reflexive ACL**: 35000-35999
- **IPv6 Standard Named Dynamic Reflexive ACL**: 36000-36999
- **IPv6 Extended Time-based Dynamic ACL**: 37000-37999
- **IPv6 Named Time-based Dynamic ACL**: 38000-38999
- **IPv6 Standard Time-based Dynamic ACL**: 39000-39999
- **IPv6 Extended Named Time-based Dynamic ACL**: 40000-40999
- **IPv6 Standard Named Time-based Dynamic ACL**: 41000-41999
- **IPv6 Extended Reflexive Dynamic ACL**: 42000-42999
- **IPv6 Named Reflexive Dynamic ACL**: 43000-43999
- **IPv6 Standard Reflexive Dynamic ACL**: 44000-44999
- **IPv6 Extended Named Reflexive Dynamic ACL**: 45000-45999
- **IPv6 Standard Named Reflexive Dynamic ACL**: 46000-46999
- **IPv6 Extended Time-based Reflexive ACL**: 47000-47999
- **IPv6 Named Time-based Reflexive ACL**: 48000-48999
- **IPv6 Standard Time-based Reflexive ACL**: 49000-49999
- **IPv6 Extended Named Time-based Reflexive ACL**: 50000-50999
- **IPv6 Standard Named Time-based Reflexive ACL**: 51000-51999
- **IPv6 Extended Dynamic Time-based ACL**: 52000-52999
- **IPv6 Named Dynamic Time-based ACL**: 53000-53999
- **IPv6 Standard Dynamic Time-based ACL**: 54000-54999
- **IPv6 Extended Named Dynamic Time-based ACL**: 55000-55999
- **IPv6 Standard Named Dynamic Time-based ACL**: 56000-56999
- **IPv6 Extended Reflexive Time-based ACL**: 57000-57999
- **IPv6 Named Reflexive Time-based ACL**: 58000-58999
- **IPv6 Standard Reflexive Time-based ACL**: 59000-59999
- **IPv6 Extended Named Reflexive Time-based ACL**: 60000-60999
- **IPv6 Standard Named Reflexive Time-based ACL**: 61000-61999
- **IPv6 Extended Dynamic Reflexive Time-based ACL**: 62000-62999
- **IPv6 Named Dynamic Reflexive Time-based ACL**: 63000-63999
- **IPv6 Standard Dynamic Reflexive Time-based ACL**: 64000-64999
- **IPv6 Extended Named Dynamic Reflexive Time-based ACL**: 65000-65999
- **IPv6 Standard Named Dynamic Reflexive Time-based ACL**: 66000-66999
- **IPv6 Extended Time-based Dynamic Reflexive ACL**: 67000-67999
- **IPv6 Named Time-based Dynamic Reflexive ACL**: 68000-68999
- **IPv6 Standard Time-based Dynamic Reflexive ACL**: 69000-69999
- **IPv6 Extended Named Time-based Dynamic Reflexive ACL**: 70000-70999
- **IPv6 Standard Named Time-based Dynamic Reflexive ACL**: 71000-71999
- **IPv6 Extended Reflexive Dynamic Time-based ACL**: 72000-72999
- **IPv6 Named Reflexive Dynamic Time-based ACL**: 73000-73999
- **IPv6 Standard Reflexive Dynamic Time-based ACL**: 74000-74999
- **IPv6 Extended Named Reflexive Dynamic Time-based ACL**: 75000-75999
- **IPv6 Standard Named Reflexive Dynamic Time-based ACL**: 76000-76999
- **IPv6 Extended Time-based Reflexive Dynamic ACL**: 77000-77999
- **IPv6 Named Time-based Reflexive Dynamic ACL**: 78000-78999
- **IPv6 Standard Time-based Reflexive Dynamic ACL**: 79000-79999
- **IPv6 Extended Named Time-based Reflexive Dynamic ACL**: 80000-80999
- **IPv6 Standard Named Time-based Reflexive Dynamic ACL**: 81000-81999
- **IPv6 Extended Dynamic Time-based Reflexive ACL**: 82000-82999
- **IPv6 Named Dynamic Time-based Reflexive ACL**: 83000-83999
- **IPv6 Standard Dynamic Time-based Reflexive ACL**: 84000-84999
- **IPv6 Extended Named Dynamic Time-based Reflexive ACL**: 85000-85999
- **IPv6 Standard Named Dynamic Time-based Reflexive ACL**: 86000-86999
- **IPv6 Extended Reflexive Time-based Dynamic ACL**: 87000-87999
- **IPv6 Named Reflexive Time-based Dynamic ACL**: 88000-88999
- **IPv6 Standard Reflexive Time-based Dynamic ACL**: 89000-89999
- **IPv6 Extended Named Reflexive Time-based Dynamic ACL**: 90000-90999
- **IPv6 Standard Named Reflexive Time-based Dynamic ACL**: 91000-91999
- **IPv6 Extended Dynamic Reflexive Time-based ACL**: 92000-92999
- **IPv6 Named Dynamic Reflexive Time-based ACL**: 93000-93999
- **IPv6 Standard Dynamic Reflexive Time-based ACL**: 94000-94999
- **IPv6 Extended Named Dynamic Reflexive Time-based ACL**: 95000-95999
- **IPv6 Standard Named Dynamic Reflexive Time-based ACL**: 96000-96999
- **IPv6 Extended Time-based Dynamic Reflexive ACL**: 97000-97999
- **IPv6 Named Time-based Dynamic Reflexive ACL**: 98000-98999
- **IPv6 Standard Time-based Dynamic Reflexive ACL**: 99000-99999
- **IPv6 Extended Named Time-based Dynamic Reflexive ACL**: 100000-100999
- **IPv6 Standard Named Time-based Dynamic Reflexive ACL**: 101000-101999


## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com