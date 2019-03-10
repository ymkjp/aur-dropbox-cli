# https://www.gnu.org/software/make/manual/html_node/

.PHONY: build install lint

PACKAGE := dropbox-cli-*.pkg.tar.xz

build:
	makepkg
	makepkg --printsrcinfo > .SRCINFO

install:
	sudo pacman -U --noconfirm $(PACKAGE)
	dropbox-cli version

lint:
	namcap -i PKGBUILD
