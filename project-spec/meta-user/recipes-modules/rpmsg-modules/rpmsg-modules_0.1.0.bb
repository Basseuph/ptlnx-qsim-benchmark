SUMMARY = "Open AMP modules: Implements echo_test mat_muk_kern proxy_dev_driver proxy_user_driver kernel modules"

HOMEPAGE = "https://github.com/OpenAMP/open-amp/"

SECTION = "PETALINUX/modules"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=fcb02dc552a041dee27e4b85c7396067"

SRC_URI = "file://Makefile \
	   file://COPYING.GPL \
	   file://rpmsg_echo_test_kern_app.c \
	   file://rpmsg_mat_mul_kern_app.c \
	   file://rpmsg_proxy_dev_driver.c \
	   file://rpmsg_user_dev_driver.c"

S = "${WORKDIR}"

inherit module
EXTRA_OEMAKE = 'KERNEL_SRC="${STAGING_KERNEL_DIR}" \
                O=${STAGING_KERNEL_BUILDDIR} \
                '
