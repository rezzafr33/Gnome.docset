PROCESS=../../../src/process.py
PACKAGE=libsoup
VER=2.60.2
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/libsoup-2.4.devhelp2

clean:
	rm -rf Documents docSet.dsidx
