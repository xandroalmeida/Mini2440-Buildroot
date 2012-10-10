#############################################################
#
# JamVM
#
#############################################################

JAMVM_VERSION = 1.5.4
JAMVM_SOURCE = jamvm-1.5.4.tar.gz
JAMVM_SITE = http://downloads.sourceforge.net/project/jamvm/jamvm/JamVM%20$(JAMVM_VERSION)
JAMVM_INSTALL_STAGING = YES

#JAMVM_CONF_OPT += 

$(eval $(autotools-package))
$(eval $(host-autotools-package))
