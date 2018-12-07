# Writing Makefiles

# Sample Device configuration for Google Nexus 6 (shamu) for Building Pure Android
# How to add a New Android Device
# Read more on AOSP Documentation: https://source.android.com/setup/develop/new-device

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on Shamu
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, device/moto/shamu/device.mk)
$(call inherit-product-if-exists, vendor/moto/shamu/device-vendor.mk)

PRODUCT_NAME := aosp_shamu

PRODUCT_PACKAGES += \
    Launcher3
