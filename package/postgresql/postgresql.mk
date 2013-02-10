#############################################################
#
# PostgreSQL
#
#############################################################

POSTGRESQL_VERSION = 9.2.3
POSTGRESQL_SOURCE = postgresql-$(POSTGRESQL_VERSION).tar.bz2
POSTGRESQL_SITE = http://ftp.postgresql.org/pub/source/v$(POSTGRESQL_VERSION)/
#POSTGRESQL_CONF_OPT = 
POSTGRESQL_DEPENDENCIES = readline
ifeq ($(BR2_arm),y)
POSTGRESQL_CONF_ENV = CFLAGS="$(TARGET_CFLAGS) -marm"
endif

$(eval $(autotools-package))
