PROCESS=../../../src/process.py
PACKAGE=gobject
VER=2.26.1
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/gobject.devhelp2

clean:
	rm -rf Documents docSet.dsidx
