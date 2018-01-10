# This is a sample device tree for building ROM
# Useful guide for you form AOSP Site
# You can learn more...https://source.android.com/setup/add-device

# To set up a resource overlay on this file, add the overlay directory to the project buildfile, as follows:
PRODUCT_PACKAGE_OVERLAYS := device/DEVICE_IMPLEMENTER/DEVICE_NAME/overlay
# (OR) Yo can write this:
PRODUCT_PACKAGE_OVERLAYS := vendor/VENDOR_NAME/overlay

# Then, add an overlay file to the directory, for example:
# vendor/foobar/overlay/frameworks/base/core/res/res/config.xml

# Write the Makefiles
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device info
PRODUCT_NAME := aosp_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on Shamu
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := true

# Inherit from device and vendor
$(call inherit-product, device/moto/shamu/device.mk)
$(call inherit-product-if-exists, vendor/moto/shamu/device-vendor.mk)

PRODUCT_NAME := aosp_shamu

PRODUCT_PACKAGES += \
    Launcher3


#
# This file should set PRODUCT_MAKEFILES to a list of product makefiles
# to expose to the build system.  LOCAL_DIR will already be set to
# the directory containing this file.
#
# This file may not rely on the value of any variable other than
# LOCAL_DIR; do not use any conditionals, and do not look up the
# value of any variable that isn't set in this file or in a file that
# it includes.
#
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_shamu.mk
