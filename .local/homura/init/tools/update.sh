#!/bin/sh

SRC=~barosl/box/.sys/etc/.local/homura/init
DEST=/etc/init/local

if [ -d "$DEST" -a -w "$DEST" ]; then
	rm -rf "$DEST"/* && cp -a "$SRC"/* "$DEST"/
else
	rm -rf "$DEST" && cp -a "$SRC" "$DEST"
fi
