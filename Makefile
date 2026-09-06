TARGET := iphone:clang:latest:15.0
ARCHS = arm64

THEOS_PACKAGE_SCHEME = rootless
INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = IOS27Spoofer

IOS27Spoofer_FILES = Tweak.xm
IOS27Spoofer_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
