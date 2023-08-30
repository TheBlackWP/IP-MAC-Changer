**Description:**

This repository contains a Bash script for dynamically changing the MAC address and obtaining a new IP address on a Linux machine. The script provides a secure and efficient way to alter the network identity of the machine, which can be useful in various cybersecurity and networking scenarios.
Features:

<ul style="list-style-type:none;">
  <li>Superuser permission check</li>
  <li>Dynamic list of available network interfaces</li>
  <li>Random MAC address alteration</li>
  <li>IP address renewal via DHCP</li>
  <li>Color-coded output for easy interpretation</li>
</ul>

   

**Requirements:**

<ul style="list-style-type:none;">
  <li>Linux Operating System with a Bash shell</li>
  <li>Network utilities ip and dhclient</li>
  <li>macchanger for MAC address manipulation</li>
</ul>


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

License: MIT License

Author:
TheBlackWP - Cybersecurity
