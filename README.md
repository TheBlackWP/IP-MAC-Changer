**Description:**

This repository contains a Bash script for dynamically changing the MAC address and obtaining a new IP address on a Linux machine. The script provides a secure and efficient way to alter the network identity of the machine, which can be useful in various cybersecurity and networking scenarios.
Features:

   ◉ Superuser permission check
  
   ◉ Dynamic list of available network interfaces
  
   ◉ Random MAC address alteration
  
   ◉ IP address renewal via DHCP
  
   ◉ Color-coded output for easy interpretation

   

**Requirements:**

   ◉ Linux Operating System with a Bash shell
   
   ◉ Network utilities ip and dhclient
   
   ◉ macchanger for MAC address manipulation

   

**Dependencies:**

    sudo apt update
    sudo apt install macchanger

    

**Usage:**

Clone the repository:

    git clone https://github.com/TheBlackWP/IP-MAC-Changer.git

Navigate into the directory:

    cd IP-MAC-Changer

Make the script executable:

    chmod +x ipchange.sh

Run the script as a superuser:

    sudo ./ipchange.sh



**Contributions:**

Contributions are welcome. Feel free to open a pull request or report issues on the repository's "Issues" tab.
License:

MIT License

Author:
TheBlackWP - Cybersecurity
