#!/usr/bin/env bash
# bluetooth_popup.sh

# List devices
devices=$(bluetoothctl devices | awk '{$1=""; print substr($0,2)}')

# Show menu and get selection
chosen=$(echo "$devices" | rofi -dmenu -i -p "Connect Bluetooth")

# Connect to device
if [[ -n "$chosen" ]]; then
    mac=$(bluetoothctl devices | grep "$chosen" | awk '{print $2}')
    bluetoothctl connect "$mac"
fi
