#
# This file is the autostart recipe.
#

SUMMARY = "Simple autostart application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://autostart.sh \
		  "

INITSCRIPT_NAME = "autostart"
INITSCRIPT_PARAMS = "defaults"
INITSCRIPT_PACKAGES = "autostart"

inherit update-rc.d

S = "${WORKDIR}"

# do_compile() {
#	     oe_runmake
# }

do_install() {
             install -d ${D}${sysconfdir}/init.d/
             install -m 0755 autostart.sh ${D}${sysconfdir}/init.d/autostart
}
