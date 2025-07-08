#!/bin/bash

# Check status of one or more systemd services

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 service1 [service2 ... serviceN]"
  exit 1
fi

for service in "$@"; do
  echo "Checking status of: $service"
  systemctl is-active --quiet "$service"

  if [ $? -eq 0 ]; then
    echo "$service is running"
  else
    echo "$service is NOT running"
  fi
  echo "-----------------------------"
done
