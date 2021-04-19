#!/bin/bash

# what device are we building for?
TARGET_DEVICE="J7 2017"

# configure some default settings for the build
Default_Settings() {

    export TARGET_DEVICE="J7 2017"
    export SHRP_PATH="device/samsung/j7y17lte"
    export SHRP_DEVICE_CODE="j7y17lte"
    export SHRP_MAINTAINER=Lotto2k21
    export SHRP_EDL_MODE=0
    export SHRP_EXTERNAL="/sdcard1"
    export SHRP_INTERNAL="/storage"
    export SHRP_OTG="/usb-otg"
    export SHRP_FLASH=1
    export SHRP_CUSTOM_FLASHLIGHT=true
    export SHRP_FONP_1="/sys/class/camera/flash/rear_torch_flash"
    export SHRP_FLASH_MAX_BRIGHTNESS=255
    export SHRP_REC="/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY"
    export SHRP_AB=false
    export SHRP_REC_TYPE=normal
    export SHRP_DEVICE_TYPE=A_Only
    export SHRP_STATUSBAR_RIGHT_PADDING=40
    export SHRP_STATUSBAR_LEFT_PADDING=40
    export SHRP_EXPRESS=true
    export LZMA_RAMDISK_TARGETS="recovery"

}

# build the project
do_build() {
  Default_Settings

  # compile it
  . build/envsetup.sh
  
  lunch omni_j7y17lte-eng
  
  mka recoveryimage -j8
}

# --- main --- #
do_build
#
