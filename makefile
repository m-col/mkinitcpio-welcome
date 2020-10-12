PREFIX    ?= /usr/lib/initcpio

help:
	@echo "make install:		install files"
	@echo "make uninstall:		uninstall files"

install:
	@mkdir -p "$(PREFIX)/hooks"
	@mkdir -p "$(PREFIX)/install"
	@cp -f "hooks/welcome" "$(PREFIX)/hooks/"
	@cp -f "install/welcome" "$(PREFIX)/install/"
	@echo "Make sure to rebuild the initramfs to include these hooks"

uninstall:
	@rm -f "$(PREFIX)/hooks/welcome"
	@rm -f "$(PREFIX)/install/welcome"


.PHONY: help install uninstall
