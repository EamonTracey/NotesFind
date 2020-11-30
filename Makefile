ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = MobileNotes

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NotesFind

NotesFind_FILES = $(wildcard Logos/*.x)
NotesFind_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk