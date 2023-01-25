#!/bin/bash
. $HOME/.cargo/env
export PATH=/openwrt/staging_dir/toolchain-mipsel_24kc_gcc-11.2.0_musl/bin:$PATH

main() {
  set -euo
  echo "Building packetcrypt"
  mkdir /tmp/packetcrypt
  RUSTFLAGS="-C linker=mipsel-openwrt-linux-musl-gcc -L /openwrt/staging_dir/target-mipsel_24kc_musl/usr/lib" \
    TARGET_CC=mipsel-openwrt-linux-musl-gcc TARGET_AR=mipsel-openwrt-linux-musl-gcc-ar \
    cargo build --release --target mipsel-unknown-linux-musl --target-dir /tmp/packetcrypt

  echo
  echo
  echo "Everything looks good"
  bash
  exit 0
}

main || bash