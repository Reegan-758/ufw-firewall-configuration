## Step-by-Step Guide

### 1. Update System Packages

Ensure your system packages are up to date to prevent compatibility issues.

```bash

sudo apt update && sudo apt upgrade

```
### 2.Install UFW

UFW is often pre-installed on Ubuntu. If it’s not installed, you can install it using:

```bash

sudo apt install ufw

```
### 3.Check UFW Status

Before making any changes, check the current status of UFW.

```bash

sudo ufw status

```

### 4.Enable UFW 

Enable UFW to Start enforcing the rules

```bash

sudo ufw enable

```
### 5.Default Policies

Set the default policies to deny incoming traffic and allow outgoing traffic.

```bash

sudo ufw default deny incoming
sudo ufw default allow outgoing

```
###  6.Allow SSH Connections

To maintain remote access, allow SSH connections.

```bash

sudo ufw allow ssh

```
### 7. Allow Specific Ports

Allow other specific ports based on your needs (e.g., HTTP and HTTPS).

```bash

sudo ufw allow http

```
### 8. Allow Specific IP Addresses

Allow connections from specific IP addresses (e.g., for trusted IPs).

```bash

sudo ufw allow from 192.168.1.100 

```
### 9. Enable Logging

Enable logging to monitor the firewall activity.

```bash

sudo ufw logging on

```

### 10. Reload UFW

Reload UFW to apply the new rules.

```bash

sudo ufw reload

```

### 11. Check UFW Status and Rules

Verify the status and list of active rules.

```bash

sudo ufw status verbose

```
### 12. Test Firewall Rules

#### Test the firewall rules to ensure they are working as expected. You can use tools like nc (netcat) to test the allowed and blocked connections.

### Using Netcat

- Netcat (nc) is a versatile networking tool used for testing and debugging. You can test allowed and blocked connections with it.

__To test allowed connections (e.g., SSH):__

```bash

nc -zv <your-server-ip> 22

```

__To test blocked connections (e.g., a port not allowed):__

```bash

nc -zv <your-server-ip> <blocked-port>

```
### Using Nmap

#### Nmap is a powerful network scanning tool. Install it using:

```bash

sudo apt install nmap

```
Scan for open ports to test the firewall rules:

```bash

nmap -v -A <your-server-ip> 

```



