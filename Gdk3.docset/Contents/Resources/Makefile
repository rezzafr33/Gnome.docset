PROCESS=../../../src/process.py
PACKAGE=gdk3
VER=3.22.26
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/gdk3.devhelp2

clean:
	rm -rf Documents docSet.dsidx
