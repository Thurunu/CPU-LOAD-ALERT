#!/bin/bash

# Define paths
SCRIPT_NAME="cpu_utilization_alert.sh"
INSTALL_DIR="/usr/local/bin"
DESKTOP_FILE="$HOME/.config/autostart/$SCRIPT_NAME.desktop"

# Remove the script from /usr/local/bin
echo "Removing $SCRIPT_NAME from $INSTALL_DIR..."
sudo rm -f "$INSTALL_DIR/$SCRIPT_NAME"

# Remove the .desktop file
echo "Removing .desktop file from $HOME/.config/autostart..."
rm -f "$DESKTOP_FILE"

echo "Uninstallation complete! Thank you."