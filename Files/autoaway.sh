#!/bin/sh
#
# Sample script to start monitoring smart devices and
# notify nest.com when a change in occupancy occurs.
# Separate all IP'S by a space
# Grace is how long the script should check for a device to come back online after nest is set to away.
# Check-Every is how long the script should check for the device to see if it is still online.
# Off Peak Start and End time is when you would like for this script to not search for devices on the local network
#
BIN=$(readlink -f $(dirname $0))

$BIN/autoaway.py --devices DEVICEIPSHERE --offpeakstart 23:00 --offpeakend 06:30 --grace 1 --check-every 1 --notify $BIN/notifynest.sh --verbose