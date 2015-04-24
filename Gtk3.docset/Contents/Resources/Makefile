PROCESS=../../../src/process.sh
PACKAGE=gtk3
VER=3.16.2
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document docset

document:
	wget -qO- ${LINK} | tar --transform 's/^${BOOK}/Documents/' -xvz

docset:
	${PROCESS} Documents/api-index-full.html Documents/index.html

clean:
	rm -rf Documents docSet.dsidx
