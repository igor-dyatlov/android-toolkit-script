#!/bin/sh

fastboot erase boot
fastboot reboot-bootloader
sleep 5
fastboot erase cache
fastboot reboot-bootloader
sleep 5
fastboot erase radio
fastboot reboot-bootloader
sleep 5
fastboot erase recovery
fastboot reboot-bootloader
sleep 5
fastboot erase system
fastboot reboot-bootloader
sleep 5
fastboot erase userdata
fastboot reboot-bootloader
