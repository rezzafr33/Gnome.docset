PROCESS=../../../src/process.sh
PACKAGE=gobject
VER=2.44.0
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	wget -qO- ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/api-index-full.html Documents/index.html

clean:
	rm -rf Documents docSet.dsidx
