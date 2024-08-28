#!/bin/bash

# Define the configuration file path for iwlwifi options
CONFIG_FILE="/etc/modprobe.d/iwlwifi-opt.conf"

# Function to disable bt_coex
disable_bt_coex() {
  echo "Disabling bt_coex..."
  
  # Check if the configuration file already exists
  if [ -f "$CONFIG_FILE" ]; then
    echo "Configuration file already exists. bt_coex might already be disabled."
  else
    # Disable bt_coex by creating a new configuration file
    echo "Creating configuration file to disable bt_coex."
    echo "options iwlwifi bt_coex_active=N" | sudo tee "$CONFIG_FILE"
  fi
}

# Function to enable bt_coex (revert settings)
enable_bt_coex() {
  echo "Enabling bt_coex (reverting settings)..."
  
  # Check if the configuration file exists
  if [ -f "$CONFIG_FILE" ]; then
    # Remove the configuration file to revert the setting
    sudo rm "$CONFIG_FILE"
    echo "Configuration file removed. bt_coex is now enabled."
  else
    echo "Configuration file not found. bt_coex might already be enabled."
  fi
}

# Function to reboot the system
reboot_system() {
  echo "Rebooting the system is required to apply changes."
  read -p "Would you like to reboot now? (y/n): " REBOOT

  if [ "$REBOOT" == "y" ] || [ "$REBOOT" == "Y" ]; then
    sudo reboot
  else
    echo "Please reboot your system manually to apply changes."
  fi
}

# Main script execution
echo "Choose an option:"
echo "1. Disable bt_coex"
echo "2. Enable bt_coex"
echo "3. Exit"
read -p "Enter your choice: " CHOICE

case $CHOICE in
  1)
    disable_bt_coex
    reboot_system
    ;;
  2)
    enable_bt_coex
    reboot_system
    ;;
  3)
    echo "Exiting script."
    ;;
  *)
    echo "Invalid choice. Exiting script."
    ;;
esac
