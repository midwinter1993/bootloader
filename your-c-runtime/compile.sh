#!/usr/bin/env sh

LIB=../../fly-os/target/x86_64-fly_os/debug/libfly_os.a
BIN=flyos

gcc -nostdlib -nostdinc -static -m64 -e _start $LIB ./prog.c -o $BIN
