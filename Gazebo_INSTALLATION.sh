#!/bin/bash

# Define a log file to capture output and errors
LOG_FILE="install_script.log"

# Function to run a command and log output/errors
run_command() {
  echo "Running: $1" | tee -a "$LOG_FILE"
  eval "$1" 2>>"$LOG_FILE"
  if [ $? -ne 0 ]; then
    echo "$1 -error" | tee -a "$LOG_FILE"
  fi
}

# Update package list
run_command "sudo apt update"

# Upgrade all packages
run_command "sudo apt upgrade -y"

# Show held packages
run_command "sudo apt-mark showhold"

# Install specific version of gazebo-common
run_command "sudo apt install gazebo-common=11.10.2+dfsg-1"

# Install gazebo and its base plugins
run_command "sudo apt install gazebo -y"
run_command "sudo apt install gazebo-plugin-base"

# Fix broken dependencies
run_command "sudo apt --fix-broken install"

# Check for specific error in the log file
if grep -q "Could not find a package configuration file provided by \"gazebo\"" "$LOG_FILE"; then
  echo "Specific error detected: missing gazeboConfig.cmake" | tee -a "$LOG_FILE"
  run_command "sudo apt install libgazebo-dev"
  run_command "whereis gazebo"
fi

echo "Script execution completed. Check $LOG_FILE for details."
