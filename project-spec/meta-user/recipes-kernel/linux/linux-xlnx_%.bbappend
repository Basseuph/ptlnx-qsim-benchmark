SRC_URI += "file://bsp.cfg"
SRC_URI_append = " file://patchfile_zcu102_2016_4_es2.patch"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
