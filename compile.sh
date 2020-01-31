#!/usr/bin/env sh

export KERNEL=./your-c-runtime/flyos
export KERNEL_MANIFEST=example-kernel/Cargo.toml

cargo xbuild --release --features binary

cargo objcopy -- -I elf64-x86-64 -O binary --binary-architecture=i386:x86-64 \
  target/x86_64-bootloader/release/bootloader target/x86_64-bootloader/release/bootloader.bin

# qemu-system-x86_64 -drive format=raw,file=target/x86_64-bootloader/release/bootloader.bin
