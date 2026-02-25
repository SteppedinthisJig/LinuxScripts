# LinuxScripts
Old Hyprland Scripts I used for stuff





# Vony's Protection Spell Services
A Bash driven TUI using whiptail that performs three roles:

Audit: Checks for open ports, failed systemd services, and orphaned packages.

Maintenance: Clears package caches, rot-logs, and optimizes the filesystem (SSD Trim).

Security: Checks for common misconfigurations (e.g., SSH root login enabled, ufw status).

Checks: Timer file that runs the auditor weekly and logs results to a Git-tracked /logs folder.
