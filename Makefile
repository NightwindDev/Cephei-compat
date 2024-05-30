export TARGET := iphone:clang:latest:15.0
export ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Preferences TweakSettings

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Cephei-compat

Cephei-compat_FILES = Tweak.x
Cephei-compat_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk