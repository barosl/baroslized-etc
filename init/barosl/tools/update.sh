#!/bin/sh

SRC=~barosl/box/.sys/etc/init/barosl
DEST=/etc/init/barosl

if [ -d "$DEST" -a -w "$DEST" ]; then
	rm -rf "$DEST"/* && cp -a "$SRC"/* "$DEST"/
else
	rm -rf "$DEST" && cp -a "$SRC" "$DEST"
fi
