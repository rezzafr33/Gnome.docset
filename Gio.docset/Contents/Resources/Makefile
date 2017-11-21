PROCESS=../../../src/process.py
PACKAGE=gio
VER=2.54.2
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/gio.devhelp2
clean:
	rm -rf Documents docSet.dsidx
