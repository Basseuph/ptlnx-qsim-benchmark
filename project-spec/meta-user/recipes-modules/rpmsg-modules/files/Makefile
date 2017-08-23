obj-m += rpmsg_user_dev_driver.o
obj-m += rpmsg_proxy_dev_driver.o
obj-m += rpmsg_echo_test_kern_app.o
obj-m += rpmsg_mat_mul_kern_app.o

all:
	make -C $(KERNEL_SRC) M=$(CURDIR)

modules_install:
	make -C $(KERNEL_SRC) M=$(CURDIR) modules_install

clean:
	make -C $(KERNEL_SRC) M=$(CURDIR) clean
