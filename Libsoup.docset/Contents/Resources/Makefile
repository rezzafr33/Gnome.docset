PROCESS=../../../src/process.sh
PACKAGE=libsoup
VER=2.58.0
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	curl -s ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/index_main.html Documents/index.html

clean:
	rm -rf Documents docSet.dsidx
