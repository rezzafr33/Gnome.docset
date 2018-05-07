PROCESS=../../../src/process.py
CACHE_DIR=../../../cache/
PACKAGE=goa
VER=$(shell jq -r '.${PACKAGE}' ../../../versions.json)
BOOK=${PACKAGE}-html-${VER}
LINK=https://developer.gnome.org/${PACKAGE}/${BOOK}.tar.gz

all: document subpath docset

document:
	wget -nd -c -P ${CACHE_DIR} ${LINK} && tar -xzvf ${CACHE_DIR}/${BOOK}.tar.gz --transform 's/^${BOOK}/Documents/'

subpath:
	sed -i 's_http://developer.gnome.org/gio/stable_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://developer.gnome.org/gio/unstable_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gdk/unstable_../../../../Gdk.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gio/stable_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gio/unstable_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/glib/unstable_../../../../GLib.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gobject/unstable_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_http://library.gnome.org/devel/gtk/unstable_../../../../Gtk3.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_https://developer.gnome.org/glib/unstable_../../../../GLib.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_https://developer.gnome.org/gobject/unstable_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/home/mclasen/gnome/share/gtk-doc/html/gobject_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/atk/_../../../../Atk.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/atk_../../../../Atk.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gdk3/_../../../../gdk3.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gdk3_../../../../gdk3.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gio/_../../../../Gio.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gio_../../../../Gio.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/glib/_../../../../GLib.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/glib_../../../../GLib.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/goa/_../../../../Goa.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/goa_../../../../Goa.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gobject/_../../../../GObject.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gobject_../../../../GObject.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gtk3/_../../../../gtk3.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/gtk3_../../../../gtk3.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libbonobo/_../../../../Libbonobo.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libbonobo_../../../../Libbonobo.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libgda-5.0/_../../../../Libgda.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libgda-5.0_../../../../Libgda.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libsoup-2.4/_../../../../Libsoup.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/libsoup-2.4_../../../../Libsoup.docset/Contents/Resources/Documents_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/pango/_../../../../Pango.docset/Contents/Resources/Documents/_g' Documents/*.html; \
	sed -i 's_/usr/share/gtk-doc/html/pango_../../../../Pango.docset/Contents/Resources/Documents_g' Documents/*.html;

docset:
	${PROCESS} Documents/goa.devhelp2

clean:
	rm -rf Documents docSet.dsidx
