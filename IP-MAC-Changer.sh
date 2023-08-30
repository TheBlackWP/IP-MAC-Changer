#!/bin/bash

# Color and style codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Function to change MAC address and IP
change_mac_and_ip() {
  local iface=$1

  # Capture and display IP before change
  OLD_IP=$(ip a show $iface | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+')
  echo -e "${BOLD}Old IP:${NC}"
  echo -e "    ${RED}$OLD_IP${NC}"

  # MAC Change
  macchanger -s $iface | grep "Current MAC\|Permanent MAC"
  ip link set dev $iface down
  NEW_MAC=$(macchanger -r $iface | grep "New MAC" | awk '{print $3 " " $4}')
  echo "New MAC:       $NEW_MAC"
  ip link set dev $iface up

  # Release and obtain new IP
  dhclient -r $iface
  dhclient $iface

  # Show completion message
  echo "Operations completed successfully."

  # Capture and display IP after change
  NEW_IP=$(ip a show $iface | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+')
  echo -e "${BOLD}New IP:${NC}"
  echo -e "    ${GREEN}$NEW_IP${NC}"
}

# Check superuser permissions
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as a superuser (root)."
  exit 1
fi

# Display available interfaces
echo "Available Network Interfaces:"
IFS=$'\n' 
interfaces=($(ip -o link show | awk -F ': ' '{print $2}'))
for i in "${!interfaces[@]}"; do
  echo "$i: ${interfaces[$i]}"
done

# Get the interface from the user
read -p "Please enter the index of the network interface you wish to change: " index
if [[ "$index" -ge 0 ]] && [[ "$index" -lt "${#interfaces[@]}" ]]; then
  INTERFACE="${interfaces[$index]}"
  change_mac_and_ip $INTERFACE
else
  echo "Invalid index."
  exit 1
fi
