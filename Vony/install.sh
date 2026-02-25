#!/usr/bin/env bash

REPO_PATH=$(pwd)

# Names
SCRIPT_NAME="MainScript.sh"
TIMER_NAME="vony-audit.timer"
SERVICE_NAME="vony-audit.service"

# MAIN

# Pathing
REPO_PATH=$(pwd)
SERVICE_NAME="vony-audit"

echo "Detected Path: $REPO_PATH"

# Service
cat <<EOF > "$REPO_PATH/systemd/$SERVICE_NAME.service"
[Unit]
Description=Vony Audit Service
Wants=$SERVICE_NAME.timer

[Service]
Type=oneshot
# This points specifically to your Vony folder
ExecStart=/bin/bash $REPO_PATH/audit.sh --cron
User=root

[Install]
WantedBy=multi-user.target
EOF

# Symlink to sys
sudo ln -sf "$REPO_PATH/systemd/$SERVICE_NAME.service" "/etc/systemd/system/$SERVICE_NAME.service"
sudo ln -sf "$REPO_PATH/systemd/$SERVICE_NAME.timer" "/etc/systemd/system/$SERVICE_NAME.timer"

sudo systemctl daemon-reload
sudo systemctl enable --now $SERVICE_NAME.timer 
