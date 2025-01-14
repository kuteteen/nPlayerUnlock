THEOS_DEVICE_IP = localhost -o StrictHostKeyChecking=no
THEOS_DEVICE_PORT = 2222

ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = nPlayer

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = nPlayerUnlock

nPlayerUnlock_FILES = Tweak.x
nPlayerUnlock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
