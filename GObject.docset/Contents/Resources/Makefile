PROCESS=../../../src/process.sh
PACKAGE=gobject
VER=2.52.1
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/api-index-full.html Documents/index.html

clean:
	rm -rf Documents docSet.dsidx
