#!/usr/bin/env bash

if command -v acpi >/dev/null 2>&1; then
  info=$(acpi -b)
else
  status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)
  capacity=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
  info="Status: $status, Capacity: $capacity%"
fi

notify-send "Battery Info" "$info"

