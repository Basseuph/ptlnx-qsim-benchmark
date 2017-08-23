TGT_PREFIX = $(DESTDIR)/usr
BIN_DIR = $(TGT_PREFIX)/bin

APP = echo_test
APP_OBJS = echo_test.o

# Add any other object files to this list below

all: build install

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

clean:

unistall:

.PHONY: install image

install: $(APP)
	install -d $(BIN_DIR)
	install -p -m 0755 $(APP) $(BIN_DIR)/$(APP)

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

help:
	@echo ""
	@echo "Quick reference for various supported build targets for $(INSTANCE)."
	@echo "----------------------------------------------------"
	@echo "  clean                  clean out build objects"
	@echo "  all                    build $(INSTANCE) and install to rootfs host copy"
	@echo "  build                  build subsystem"
	@echo "  install                install built objects to rootfs host copy"
