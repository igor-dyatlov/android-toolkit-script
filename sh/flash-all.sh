#!/bin/sh

fastboot flash bootloader .img
fastboot reboot-bootloader
sleep 5
fastboot flash radio .img
fastboot reboot-bootloader
sleep 5
fastboot -w update .zip
