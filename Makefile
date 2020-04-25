include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LongTimer
LongTimer_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileTimer"
