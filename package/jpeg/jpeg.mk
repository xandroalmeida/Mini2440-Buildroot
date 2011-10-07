#############################################################
#
# jpeg (libraries needed by some apps)
#
#############################################################
JPEG_VERSION = 8c
JPEG_SITE = http://www.ijg.org/files/
JPEG_SOURCE = jpegsrc.v$(JPEG_VERSION).tar.gz
JPEG_INSTALL_STAGING = YES
JPEG_INSTALL_TARGET = YES

define JPEG_REMOVE_USELESS_TOOLS
	rm -f $(addprefix $(TARGET_DIR)/usr/bin/,cjpeg djpeg jpegtrans rdjpgcom wrjpgcom)
endef

JPEG_POST_INSTALL_TARGET_HOOKS += JPEG_REMOVE_USELESS_TOOLS

$(eval $(call AUTOTARGETS))
