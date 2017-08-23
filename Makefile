BITSTREAM ?= images/linux/fpga_top_wrapper.bit
BOOT_BIN = images/linux/BOOT.BIN

build: fix-tmp-dir-location
	petalinux-build

config: fix-tmp-dir-location
	petalinux-config

config-kernel: fix-tmp-dir-location
	petalinux-config -c kernel

config-rootfs: fix-tmp-dir-location
	petalinux-config -c rootfs

package-boot:
	petalinux-package --boot --force --fpga $(BITSTREAM) --u-boot --output $(BOOT_BIN)

distclean: fix-tmp-dir-location
	petalinux-build -x distclean
	rm -rf components/plnx_workspace

mrproper: fix-tmp-dir-location
	petalinux-build -x mrproper
	rm -rf components/plnx_workspace
	rm -rf pre-built
	rm -rf *.bsp

fix-tmp-dir-location:
	sed --in-place --expression "s|CONFIG_TMP_DIR_LOCATION=.*|CONFIG_TMP_DIR_LOCATION=\"$(PWD)/build/tmp\"|" project-spec/configs/config

.PHONY: distclean mrproper
