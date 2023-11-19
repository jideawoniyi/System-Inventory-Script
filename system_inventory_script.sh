
#!/bin/bash

# System Inventory Script

# Output file
inventory_file="system_inventory_$(date +%Y%m%d).txt"

# Function to get hardware details
get_hardware_info() {
    echo "Hardware Information:" >> $inventory_file
    echo "CPU:" >> $inventory_file
    lscpu >> $inventory_file
    echo "" >> $inventory_file

    echo "RAM:" >> $inventory_file
    free -h >> $inventory_file
    echo "" >> $inventory_file

    echo "Storage:" >> $inventory_file
    lsblk >> $inventory_file
    echo "" >> $inventory_file
}

# Function to get installed software and versions
get_software_info() {
    echo "Installed Software:" >> $inventory_file
    dpkg --get-selections | grep -v deinstall >> $inventory_file
    echo "" >> $inventory_file
}

# Main function
main() {
    echo "System Inventory Report - $(date)" > $inventory_file
    echo "------------------------------------" >> $inventory_file
    get_hardware_info
    get_software_info
    echo "Inventory saved to $inventory_file"
}

# Execute main function
main
