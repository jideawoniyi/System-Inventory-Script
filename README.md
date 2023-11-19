# System-Inventory-Script

### Overview
This script is designed to catalog a system's hardware and software assets, providing a comprehensive overview of the system's current configuration. It's particularly useful for system administrators and IT professionals for record-keeping and inventory management.

### Features
Hardware Detection: Gathers detailed information about the CPU, RAM, and storage devices.
Software Listing: Lists all installed software and their versions (tailored for Debian-based systems).
Output File Generation: Generates a report file with a timestamp in the format system_inventory_YYYYMMDD.txt.

### Requirements
A Linux-based operating system (preferably Debian-based for software inventory).
Bash shell.
Necessary permissions to execute system commands.

### Installation

No installation is required. Just download the script and ensure it is executable.

### Usage
Download the script to your desired directory.

Make the script executable:
```bash
chmod +x system_inventory_script.sh
```

Run the script:
```bash

./system_inventory_script.sh

```

The script will create an inventory file in the same directory.

### Output
The output file system_inventory_YYYYMMDD.txt will include:

CPU details
RAM usage and total memory
Storage device information
List of installed software and versions

### Customization
You can modify the script as needed to fit your specific system requirements or to add additional features.

### License
MIT: This script is provided "as is", without warranty of any kind. Use at your own risk.
