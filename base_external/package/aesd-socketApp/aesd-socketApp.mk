
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents

# AESD_SOCKETAPP_VERSION = '#COMMIT VERSION NUMBER'
AESD_SOCKETAPP_VERSION = 'a73e710ff1ce47c2aa5dcaa18fb3ee1b1e5f9412'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
# AESD_SOCKETAPP_SITE = '#GITHUB REPOSITORY LINK'
AESD_SOCKETAPP_SITE = 'https://github.com/cu-ecen-aeld/assignments-3-and-later-cibi-p.git'
AESD_SOCKETAPP_SITE_METHOD = git
AESD_SOCKETAPP_GIT_SUBMODULES = YES

define AESD_SOCKETAPP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server/ all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_SOCKETAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
