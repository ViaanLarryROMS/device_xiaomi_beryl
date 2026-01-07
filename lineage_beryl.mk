#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from beryl device
$(call inherit-product, device/xiaomi/beryl/device.mk)

# Axion Stuff
AXION_CAMERA_REAR_INFO := 108,8,2
AXION_CAMERA_FRONT_INFO := 20
AXION_PROCESSOR := MTK_Dimensity_7025U
AXION_MAINTAINER := Naoko_Shoto
TARGET_INCLUDES_LOS_PREBUILTS := false
TARGET_INCLUDE_VIPERFX := false
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false

# Axion CPU Flags
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7

# Axion finetuning
BYPASS_CHARGE_SUPPORTED ?= false
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := sugov_ext

PRODUCT_DEVICE := beryl
PRODUCT_NAME := lineage_beryl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 14 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 15 AP3A.240905.015.A2 OS2.0.207.0.VOQMIXM release-keys" \
    BuildFingerprint=Redmi/citrine_global/citrine:14/SP1A.210812.016/OS2.0.207.0.VOQMIXM:user/release-keys

