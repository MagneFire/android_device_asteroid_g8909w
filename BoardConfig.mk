#
# Copyright (C) 2017 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/asteroid/g8909

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8909
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_RIL_VARIANT := caf

# Kernel
TARGET_NO_KERNEL := false

# Treble
#PRODUCT_FULL_TREBLE_OVERRIDE := true
#BOARD_VNDK_VERSION := current
#LOCAL_USE_VNDK := true
#BOARD_VNDK_RUNTIME_DISABLE := true

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_COPY_OUT_VENDOR := vendor

# Wifi
# BOARD_HAS_QCOM_WLAN := true
# BOARD_HAS_QCOM_WLAN_SDK := true
# BOARD_HOSTAPD_DRIVER := NL80211
# BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
# BOARD_WLAN_DEVICE := qcwcn
# BOARD_WPA_SUPPLICANT_DRIVER := NL80211
# BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
# TARGET_USES_QCOM_WCNSS_QMI := true
# TARGET_USES_WCNSS_CTRL := true
# TARGET_PROVIDES_WCNSS_QMI := true
# WIFI_DRIVER_FW_PATH_AP := "ap"
# WIFI_DRIVER_FW_PATH_STA := "sta"
# WPA_SUPPLICANT_VERSION := VER_0_8_X
