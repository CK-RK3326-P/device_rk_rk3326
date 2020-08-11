#
# Copyright 2014 The Android Open-Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/rk3326/h710/BoardConfig.mk
$(call inherit-product, device/rockchip/rk3326/device-common.mk)
$(call inherit-product, device/rockchip/common/device.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := h710
PRODUCT_DEVICE := h710
PRODUCT_BRAND := anichips
PRODUCT_MODEL := h710
PRODUCT_MANUFACTURER := anichips
PRODUCT_AAPT_PREF_CONFIG := mdpi

#
## add Rockchip properties
#
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=160 \
			      ro.lmk.downgrade_pressure=70

PRODUCT_COPY_FILES += device/rockchip/rk3326/h710/aispeech/etc/audio_policy_configuration.xml:vendor/etc/audio_policy_configuration.xml \
		      device/rockchip/rk3326/h710/aispeech/etc/aispeech_agc_near.bin:vendor/etc/aispeech_agc_near.bin \
		      device/rockchip/rk3326/h710/aispeech/etc/AEC_ch6-2-ch4_1ref.bin:vendor/etc/AEC_ch6-2-ch4_1ref.bin \
		      device/rockchip/rk3326/h710/aispeech/etc/aispeech_audio_policy_configuration.xml:vendor/etc/aispeech_audio_policy_configuration.xml \
		      device/rockchip/rk3326/h710/aispeech/etc/aispeech_audio_device.xml:vendor/etc/aispeech_audio_device.xml \
		      device/rockchip/rk3326/h710/aispeech/audio.stub.default.so.32:vendor/lib/hw/audio.stub.default.so \
		      device/rockchip/rk3326/h710/aispeech/audio.stub.default.so.64:vendor/lib64/hw/audio.stub.default.so

PRODUCT_COPY_FILES += device/rockchip/rk3326/h710/bootanimation.zip:system/media/bootanimation.zip
