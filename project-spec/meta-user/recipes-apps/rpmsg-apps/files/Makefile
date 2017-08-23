.PHONY : clean uninstall all install build

TGT_PREFIX = $(DESTDIR)/usr
BIN_DIR = $(TGT_PREFIX)/bin
SRC_DIR := $(CURDIR)/

RPMSG_ECHO_TEST=echo_test
RPMSG_MAT_MUL=mat_mul_demo
RPMSG_PROXY_APP=proxy_app

dir_apps:=$(RPMSG_ECHO_TEST) $(RPMSG_MAT_MUL) $(RPMSG_PROXY_APP)

SUB_DO:=$(addprefix sub_build_app_,$(dir_apps))
SUB_DO+=$(addprefix sub_install_app_,$(dir_apps))
SUB_DO+=$(addprefix sub_clean_app_,$(dir_apps))
SUB_DO+=$(addprefix sub_uninstall_app_,$(dir_apps))
SUB_DO+=$(addprefix sub_all_app_,$(dir_apps))

$(SUB_DO):
	$(eval TARGET:=$(subst sub_,,$(firstword $(subst _app_, ,$@))))
	$(eval APP_NAME:=$(subst sub_$(TARGET)_app_,,$@))
	@echo "hello"
	make -C $(APP_NAME) $(TARGET)

build:$(addprefix sub_build_app_,$(dir_apps))
install:$(addprefix sub_install_app_,$(dir_apps))
clean:$(addprefix sub_clean_app_,$(dir_apps))
uninstall:$(addprefix sub_unistall_app_,$(dir_apps))
all:$(addprefix sub_all_app_,$(dir_apps))

help:
	@echo ""
	@echo "Quick reference for various supported make commands for $(INSTANCE)."
	@echo "----------------------------------------------------"
	@echo "all		build and install into workdir/usr/bin"
	@echo "clean      	clean all binaries only"
	@echo "install		install into /usr/bin"
	@echo "build          	build the src"
	@echo "uninstall        remove form workdir/usr/bin"
