PROCESS=../../../src/process.py
CACHE_DIR=../../../cache/
PACKAGE=atk
VER=$(shell jq -r '.${PACKAGE}' ../../../versions.json)
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document subpath docset

document:
	wget -nd -c -P ${CACHE_DIR} ${LINK} && tar -xzvf ${CACHE_DIR}/${BOOK}.tar.gz --transform 's/^${BOOK}/Documents/'

subpath:
	sed -i 's_http://library.gnome.org/devel/gdk/unstable_../../../../Gdk.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gio/unstable_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/glib/unstable_../../../../GLib.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gobject/unstable_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gtk/unstable_../../../../Gtk3.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/home/mclasen/gnome/share/gtk-doc/html/gobject_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/atk_../../../../Atk.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libbonobo_../../../../Libbonobo.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/pango_../../../../Pango.docset/Contents/Resources/Documents_g' Documents/*.html;

docset:
	${PROCESS} Documents/atk.devhelp2

clean:
	rm -rf Documents docSet.dsidx
