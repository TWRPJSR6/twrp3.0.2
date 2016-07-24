# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common language setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

LOCAL_PATH := device/jsr/i6

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_DEVICE := i6
PRODUCT_NAME := omni_i6
PRODUCT_BRAND := jsr
PRODUCT_MANUFACTURER := jsr
PRODUCT_MODEL := JSR I6

#fstab.qcom & init.qcom.spec.switch.rc
PRODUCT_PACKAGES += fstab.qcom
