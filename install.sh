#!/bin/bash

#Define paths
SCRIPT_NAME="cpu_utilization_alert.sh"
INSTALL_DIR="/usr/local/bin"
DESKTOP_FILE="$HOME/.config/autostart/$SCRIPT_NAME.desktop"

# Ensure the script is executable
chmod +x "$SCRIPT_NAME"

# Copy the script to /usr/local/bin
echo "Cpoying $SCRIPT_NAME to $INSTALL_DIR......"
sudo cp "$SCRIPT_NAME" "$INSTALL_DIR/"

# Create the .desktop file
echo "Creating .desktop file in $HOME/.config.autostart......"
mkdir -p "$HOME/.config/autostart"
cat > $DESKTOP_FILE <<EOL
[DESKTOP ENTRY]
Type=Application
Exec=$INSTALL_DIR/$SCRIPT_NAME
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=CPU Utilization Alert
Comment=Monitor CPU load and send alerts if it exceeds a threshold

EOL

chmod +x uninstall.sh

echo "Installation complete! The script will run automatically at next system startup."