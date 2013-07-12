#!/bin/sh

SRC=~barosl/box/.sys/etc/init/barosl
DEST=/etc/init/barosl

rm -rf "$DEST" && cp -a "$SRC" "$DEST"
