#!/bin/bash

#--------> AUTO MATION BEGIN

sudo apt-get install android-tools-adb android-tools-fastboot -y
adb devices
adb reboot bootloader
sleep 30
fastboot devices
fastboot flash recovery twrp3231.img
fastboot boot twrp3231.img
sleep 40
adb sideload su282.zip

#--------> AUTO MATION STOP
