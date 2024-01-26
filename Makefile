ROOT_DIR = $(HOME)/Library/Developer/Xcode/Templates/File Templates/Multiplatform/Source

all: uninstall install

install:
	mkdir -p "$(ROOT_DIR)"
	cp -r templates/*.xctemplate "$(ROOT_DIR)"

uninstall:
	rm -rf "$(ROOT_DIR)"/Spec\ File\ for\ TCA.xctemplate
	rm -rf "$(ROOT_DIR)"/TCA\ Service.xctemplate
	rm -rf "$(ROOT_DIR)"/TCA\ Feature.xctemplate
	rm -rf "$(ROOT_DIR)"/TCA\ with\ ReducerProtocol.xctemplate
	rm -rf "$(ROOT_DIR)"/Swift\ Files\ for\ TCA.xctemplate

