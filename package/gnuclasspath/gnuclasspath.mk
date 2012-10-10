#############################################################
#
# GNU Classpath
#
#############################################################

GNUCLASSPATH_VERSION = 0.98
GNUCLASSPATH_SOURCE = classpath-$(GNUCLASSPATH_VERSION).tar.gz
GNUCLASSPATH_SITE = ftp://ftp.gnu.org/gnu/classpath/
GNUCLASSPATH_INSTALL_STAGING = YES

GNUCLASSPATH_CONF_OPT += --enable-jni --disable-gtk-peer --disable-gconf-peer --disable-plugin --disable-Werror

$(eval $(autotools-package))
$(eval $(host-autotools-package))
