PROCESS=../../../src/process.py
PACKAGE=libgda
VER=5.2.4
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/libgda-5.0.devhelp2

clean:
	rm -rf Documents docSet.dsidx
