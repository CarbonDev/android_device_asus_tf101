# Copyright (C) 2011 The Android Open Source Project
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

# Inherit from our custom product configuration
$(call inherit-product, vendor/carbon/config/common_tablet.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/asus/tf101/full_tf101.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := carbon_tf101
PRODUCT_DEVICE := tf101
PRODUCT_BRAND := asus
PRODUCT_MODEL := Transformer TF101
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=US_epad \
    BUILD_FINGERPRINT="asus/US_epad/TF101:4.0.3/IML74K/US_epad-9.2.1.27-20120615:user/release-keys" \
    PRIVATE_BUILD_DESC="US_epad-user 4.0.3 IML74K US_epad-9.2.1.27-20120615 release-keys"
