#
# Copyright (C) 2016 The Paranoid Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Includes
TARGET_SPECIFIC_HEADER_PATH := device/lge/g2-common/include
include device/qcom/common/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := galbi
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/lge/g2-common/releasetools/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x05000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/lge/msm8974

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_KERNEL_HAVE_EXFAT := true

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/g2-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/g2-common/bluetooth/vnd_g2.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
COMMON_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT
USE_DEVICE_SPECIFIC_CAMERA := true

# Charging/Alarms
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "chargerlogo"
BOARD_HEALTHD_CUSTOM_CHARGER_RES := device/lge/g2-common/charger/images
BOARD_CHARGER_ENABLE_ALARM := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# Gestures
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/touch_gesture"

# Dex-preoptimization
WITH_DEXPREOPT := true

# Display
HAVE_ADRENO_SOURCE := false
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200 # 700M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2.5G (actually 2.75, but leave room for model variation)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312 # 12.8G (its much larger, but this is enough for now)

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm's Time Daemon
BOARD_USES_QC_TIME_SERVICES := true

# Keymaster
TARGET_HW_KEYMASTER_V03 := true

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB = device/lge/g2-common/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_g2

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/g2-common/releasetools

# RIL
BOARD_RIL_CLASS += ../../../device/lge/g2-common/ril

# SEPolicy
BOARD_SEPOLICY_DIRS += \
    device/lge/g2-common/sepolicy

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
