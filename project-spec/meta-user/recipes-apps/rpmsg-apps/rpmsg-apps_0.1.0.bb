SUMMARY = "Open AMP Implements and packages proxy_app echo_test mat_mul_demo remote proc firmware apps for Zynq platform"

HOMEPAGE = "https://github.com/OpenAMP/open-amp/"

SECTION = "PETALINUX/apps"

LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=b30cbe0b980e98bfd9759b1e6ba3d107"

SRC_URI = "file://Makefile \
	   file://LICENSE \
	   file://echo_test/echo_test.c \
	   file://echo_test/Makefile \
	   file://echo_test/data/image_echo_test \
	   file://mat_mul_demo/Makefile \
	   file://mat_mul_demo/mat_mul_demo.c \
	   file://mat_mul_demo/data/image_matrix_multiply \
	   file://proxy_app/data/image_rpc_demo \
	   file://proxy_app/Makefile \
	   file://proxy_app/proxy_app.c \
	   file://proxy_app/proxy_app.h \
           "
FIRMWARE_echo_test = "${S}/echo_test/data/image_echo_test"
FIRMWARE_mat_mul = "${S}/mat_mul_demo/data/image_matrix_multiply"
FIRMWARE_rpc_demo = "${S}/proxy_app/data/image_rpc_demo"

S = "${WORKDIR}"

DEPENDS = "open-amp libmetal"
#DEPENDS = "rpmsg-modules"

FILES_${PN} = "/usr/bin/echo_test\
	/usr/bin/mat_mul_demo\
	/usr/bin/proxy_app\
	/lib/firmware/image_echo_test\
	/lib/firmware/image_matrix_multiply\
	lib/firmware/image_rpc_demo\
"
INSANE_SKIP_${PN} = "arch"

do_install () {
	oe_runmake DESTDIR=${D} install
	install -d ${D}/lib/firmware
	for i in ${FIRMWARE_echo_test} ${FIRMWARE_mat_mul} ${FIRMWARE_rpc_demo}; do
		dest=${D}/lib/firmware/$(basename $i)
		install -m 0644 $i ${dest}
	done
}
