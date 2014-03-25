#!/bin/sh

DIR=$(cd $(dirname $0) && pwd)

SRC=$DIR/..
DEST=/etc/init/barosl

if [ -d "$DEST" -a -w "$DEST" ]; then
	rm -rf "$DEST"/* && cp -a "$SRC"/* "$DEST"/
else
	rm -rf "$DEST" && cp -a "$SRC" "$DEST"
fi
