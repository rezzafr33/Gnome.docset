PROCESS=../../../src/process.py
PACKAGE=pango
VER=1.40.5
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/pango.devhelp2

clean:
	rm -rf Documents docSet.dsidx
