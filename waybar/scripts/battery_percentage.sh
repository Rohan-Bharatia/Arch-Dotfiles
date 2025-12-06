#!/usr/bin/env bash
if command -v acpi >/dev/null 2>&1; then
  perc=$(acpi -b | awk -F', ' '{print $2}')
elif [ -r /sys/class/power_supply/BAT0/capacity ]; then
  perc=$(cat /sys/class/power_supply/BAT0/capacity)%
else
  perc="N/A"
fi

notify-send "Battery" "$perc"
