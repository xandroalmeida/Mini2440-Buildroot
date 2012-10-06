#############################################################
#
# gloox
#
#############################################################

GLOOX_VERSION = 1.0
GLOOX_SOURCE = gloox-$(GLOOX_VERSION).tar.bz2
GLOOX_SITE = http://camaya.net/download
GLOOX_INSTALL_STAGING = YES

GLOOX_CONF_OPT += --disable-static --without-tests --without-examples
# use cross CC/AR rather than host
#GLOOX_MAKE_ENV = CC="$(TARGET_CC) $(TARGET_CFLAGS)" AR="$(TARGET_AR)"

$(eval $(autotools-package))
$(eval $(host-autotools-package))
