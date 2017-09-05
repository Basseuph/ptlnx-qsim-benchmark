#
# This file is the nbench recipe.
#

SUMMARY = "Linux/Unix nbench (previously known as BYTE's Native Mode Benchmarks)"
SECTION = "PETALINUX/apps"
#LICENSE = "nbench-byte"
#LIC_FILES_CHKSUM = "file://README;beginline=57;endline=66;md5=020ef579f8fa5746b7e307a54707834f"
LICENSE = "PD"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/PD;md5=b3597d12946881e13cb3b548d1173851"
SECTION = "console/utils"

# added patches from http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmark/nbench-byte

SRC_URI = " \
		git://github.com/Basseuph/nbench \
	  "

# file://nbench_32bits.patch
# file://Makefile-add-more-dependencies-to-pointer.h.patch

SRCREV = "98f507cc383c8d4913fd5a9c5a5a9524bb268865"

S = "${WORKDIR}"

EXTRA_OEMAKE = "-e MAKEFLAGS="

TARGET_CC_ARCH += "${CFLAGS} ${LDFLAGS}"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
             install -m 0644 NNET.DATA ${D}${bindir}
	     install -m 0755 nbench ${D}${bindir}
}
