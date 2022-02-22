ROOT_DIR = $(HOME)/Library/Developer/Xcode/Templates/File Templates/Multiplatform/Source

all: uninstall install

install:
	mkdir -p "$(ROOT_DIR)"
	cp -r templates/*.xctemplate "$(ROOT_DIR)"

uninstall:
	rm -rf "$(ROOT_DIR)"/*.xctemplate

