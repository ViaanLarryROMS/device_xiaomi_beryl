#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)


# Stuff
TARGET_INCLUDE_VIPERFX := false
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_HAS_UDFPS := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
# TARGET_BUILD_PACKAGE := 3

ifeq ($(TARGET_BUILD_PACKAGE),3)
  # (valid only for GAPPS builds)
  TARGET_INCLUDE_GOOGLE_COMMS := true
  TARGET_INCLUDE_PIXEL_LAUNCHER := false
  TARGET_SUPPORTS_QUICK_TAP := true
  TARGET_SUPPORTS_CALL_RECORDING := true
  TARGET_INCLUDE_STOCK_ARCORE := true
  TARGET_INCLUDE_LIVE_WALLPAPERS := true
  TARGET_SUPPORTS_GOOGLE_RECORDER := true
endif


# Debugging
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := NaokoShoto

# Inherit from beryl device
$(call inherit-product, device/xiaomi/beryl/device.mk)

PRODUCT_DEVICE := beryl
PRODUCT_NAME := alpha_beryl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 14 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 15 AP3A.240905.015.A2 OS2.0.207.0.VOQMIXM release-keys" \
    BuildFingerprint=Redmi/citrine_global/citrine:14/SP1A.210812.016/OS2.0.207.0.VOQMIXM:user/release-keys \

