#!/bin/sh

fastboot erase recovery
fastboot reboot-bootloader
sleep 5
fastboot flash recovery $.img
fastboot reboot-bootloader
sleep 5

