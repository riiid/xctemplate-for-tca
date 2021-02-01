TEMPLATE_NAME = Swift Files for TCA.xctemplate
ROOT_DIR = $(HOME)/Library/Developer/Xcode/Templates/File Templates/Multiplatform/Source

all: uninstall install

install:
	mkdir -p "$(ROOT_DIR)"
	cp -r "$(TEMPLATE_NAME)" "$(ROOT_DIR)/$(TEMPLATE_NAME)"

uninstall:
	rm -rf "$(ROOT_DIR)/$(TEMPLATE_NAME)"

