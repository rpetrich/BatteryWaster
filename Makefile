TWEAK_NAME = BatteryWaster
BatteryWaster_FILES = Tweak.x
BatteryWaster_FRAMEWORKS = Foundation UIKit

TARGET_IPHONEOS_DEPLOYMENT_VERSION = 8.0

IPHONE_ARCHS = armv7 arm64

INSTALL_TARGET_PROCESSES ?= SpringBoard

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk
