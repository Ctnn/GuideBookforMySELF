#!/bin/bash

# Define the Bluetooth configuration file path
CONFIG_FILE="/etc/bluetooth/main.conf"

# Function to modify the Bluetooth configuration file
modify_bluetooth_config() {
  echo "Modifying Bluetooth configuration..."

  # Check if the configuration file exists
  if [ -f "$CONFIG_FILE" ]; then
    # Check if the line #ControllerMode = dual is in the file
    if grep -q "^#ControllerMode = dual" "$CONFIG_FILE"; then
      # Backup the original configuration file
      sudo cp "$CONFIG_FILE" "$CONFIG_FILE.bak"
      echo "Backup of the original configuration file created at $CONFIG_FILE.bak"

      # Uncomment and change ControllerMode to bredr
      sudo sed -i '/^#ControllerMode = dual/c\ControllerMode = bredr' "$CONFIG_FILE"
      echo "ControllerMode changed to 'bredr'."
    else
      echo "The line '#ControllerMode = dual' was not found in $CONFIG_FILE."
    fi
  else
    echo "Bluetooth configuration file not found at $CONFIG_FILE."
    exit 1
  fi
}

# Function to restart Bluetooth service
restart_bluetooth_service() {
  echo "Restarting Bluetooth service..."
  sudo /etc/init.d/bluetooth restart

  if [ $? -eq 0 ]; then
    echo "Bluetooth service restarted successfully."
  else
    echo "Failed to restart Bluetooth service."
    exit 1
  fi
}

# Main script execution
modify_bluetooth_config
restart_bluetooth_service

echo "Configuration completed. Please follow these steps to connect your AirPods:"
echo "1. Open your computer's Bluetooth settings and enable Bluetooth."
echo "2. Place both AirPods inside their case and keep the lid open."
echo "3. Press and hold the button on the back of the AirPods case until the light on the front blinks."
echo "4. In the Bluetooth settings, look for your AirPods and connect to them."
