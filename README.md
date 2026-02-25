# LinuxScripts
Old Hyprland Scripts I used for efficiency and to learn more about the OS itself





# Vony's Protection Spell Services
A Bash driven TUI using whiptail that performs three roles:

Audit: Checks for open ports, failed systemd services, and orphaned packages.

Maintenance: Clears package caches, rot-logs, and optimizes the filesystem (SSD Trim).

Security: Checks for common misconfigurations (e.g., SSH root login enabled, ufw status).

Checks: Timer file that runs the auditor weekly and logs results to a Git-tracked /logs folder.

## 🛠 Project Structure
* `MainScript.sh`: The core logic and TUI.
* `install.sh`: The automation engine that links the project to the OS.
* `systemd/`: Contains the unit and timer configuration.

## 📦 Installation
```bash
git clone [https://github.com/YOUR_USERNAME/LinuxScripts.git](https://github.com/YOUR_USERNAME/LinuxScripts.git)
cd LinuxScripts/Vony
chmod +x install.sh
sudo ./install.sh