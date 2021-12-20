#!/bin/sh
# Script to refresh picom if it fails
while true; do
  if  [[ !$(ps -e | grep picom&) ]]; then
    picom --experimental-backends
  fi
done
