# Maintainer: Johannes Löthberg <johannes@kyriasis.com>
# Maintainer: Jan Alexander Steffens (heftig) <heftig@archlinux.org>
# Contributor: Alexander F Rødseth <xyproto@archlinux.org>
# Contributor: Daniel Micay <danielmicay@gmail.com>
# Contributor: userwithuid <userwithuid@gmail.com>

pkgbase=rust
pkgname=(
  rust
  lib32-rust-libs
  rust-musl
  rust-aarch64-gnu
  rust-aarch64-musl
  rust-wasm
  rust-src
)
pkgver=1.90.0
pkgrel=3
epoch=1
pkgdesc="Systems programming language focused on safety, speed and concurrency"
url=https://www.rust-lang.org/
arch=(x86_64)
license=("Apache-2.0 OR MIT")
options=(
  !emptydirs
  !lto
)
depends=(
  bash
  curl
  gcc
  gcc-libs
  glibc
  libssh2
  lld
  llvm-libs
  openssl
  zlib
)
makedepends=(
  aarch64-linux-gnu-gcc
  aarch64-linux-gnu-glibc
  clang
  cmake
  lib32-gcc-libs
  lib32-glibc
  libffi
  llvm
  musl
  musl-aarch64
  ninja
  perl
  python
  rust
  wasi-libc
  wasm-component-ld
)
checkdepends=(
  gdb
  procps-ng
)
source=(
  "https://static.rust-lang.org/dist/rustc-$pkgver-src.tar.gz"{,.asc}

  # Patch bootstrap so that rust-analyzer-proc-macro-srv
  # is in /usr/lib instead of /usr/libexec
  0001-bootstrap-Change-libexec-dir.patch

  # Put bash completions where they belong
  0002-bootstrap-Change-bash-completion-dir.patch

  # Use our *-pc-linux-gnu targets, making LTO with clang simpler
  0003-compiler-Change-LLVM-targets.patch

  # Use our ld.lld
  0004-compiler-Use-ld.lld-by-default.patch

  # Use our aarch64-linux-gnu-gcc
  0005-compiler-Use-aarch64-linux-gnu-gcc-to-link-aarch64-t.patch

  # Prefer "lib" over "lib64"
  0006-compiler-Swap-primary-and-secondary-lib-dirs.patch

  # Fix build with system rustc
  # https://github.com/rust-lang/rust/issues/143735
  0007-bootstrap-Workaround-for-system-stage0.patch

  # Fix build with system rustc 1.90.0
  # https://github.com/rust-lang/rust/issues/143765
  0008-bootstrap-Workaround-for-1.90.0-stage0.patch
)
b2sums=('7bb22f814f1ccf08bd8c57a0c81d94b5a5850b8e20c563f1da7b1a37bb390b5ed82ff448dfc7738e1990653c798f6edaacc410483b95007691e717d55a6b10de'
        'SKIP'
        '0d1dc9024d53f669ceeb5fb61879527663c99ef3d7bd9bcb1e24dc8de15605dfc4820be23e7114c810f91eeb9d0d9e2107d507584af78a3ef2ea48e28f9d16b9'
        '81d39b0ceadfccdfea647eafbfd13beefabcf95bf476e2bfbd3cfcc16a5c4f33fef9cb946da2324f03fc2c44636101fb2b3010cb3527185f64041bc99c665f06'
        '248747c078b930f700a0685638663d1337b289e6a46d7feca8f017dfb316c22574656bf84888f7ae7e2aab68f59190eca61bf17a780753823ffc4fbc91ff785d'
        '645f42c6c831c5000b1b174b9d1693e99d12e55f166d5a3d6f8843801e7f10c3079be035bfb5b04f7d51400157a5cbb63874b6728148f2cb7e75f7868a77b818'
        '40e14ccc8b5dfff5d87f43a8763d1d2a49435c7a76633a920648a43dd25df0ab056107722ccdc574d9d603322699c6f3990878e19ab25d5e0117689d8f6b99b8'
        '8be938ad0016244e86707396ee147fdff7a7ee4d2a776607ff316a9264512faba99d03a7a6b5ba48744c3ae93b09a2eaede567554142a30570346e177131099f'
        '04a5a67ee8d2a41d81d663b0d81e63495ea4c3455d8dce97c94f2722749be0c2342c715da44f22b1c8fcd04890d980cb865f0e6980f2b8dae886848b4e870e27'
        '440465da4823dc58e67e2f608872dfeb52727673d8435280bbe79f4a32213c7dacf8761da1eef1f65eec3778a9f07f01d67a2134838ff68c73dfe639a7d5e7da')
validpgpkeys=(
  108F66205EAEB0AAA8DD5E1C85AB96E6FA1BE5FE  # Rust Language (Tag and Release Signing Key) <rust-key@rust-lang.org>
)

# Make sure the duplication in rust-wasm is found
COMPRESSZST+=(--long)

prepare() {
  cd rustc-$pkgver-src

  local src
  for src in "${source[@]}"; do
    src="${src%%::*}"
    src="${src##*/}"
    src="${src%.zst}"
    [[ $src = *.patch ]] || continue
    echo "Applying patch $src..."
    patch -Np1 < "../$src"
  done

  cat >bootstrap.toml <<END
# see src/bootstrap/defaults/
profile = "dist"

# see src/bootstrap/src/utils/change_tracker.rs
change-id = 144675

[llvm]
download-ci-llvm = false
link-shared = true

[build]
description = "Arch Linux $pkgbase $epoch:$pkgver-$pkgrel"
target = [
  "x86_64-unknown-linux-gnu",
  "i686-unknown-linux-gnu",
  "x86_64-unknown-linux-musl",
  "aarch64-unknown-linux-gnu",
  "aarch64-unknown-linux-musl",
  "wasm32-unknown-unknown",
  "wasm32v1-none",
  "wasm32-wasip1",
  "wasm32-wasip1-threads",
  "wasm32-wasip2",
]
cargo = "/usr/bin/cargo"
rustc = "/usr/bin/rustc"
rustfmt = "/usr/bin/rustfmt"
locked-deps = true
vendor = true
tools = [
  "cargo",
  "clippy",
  "rustdoc",
  "rustfmt",
  "rust-analyzer-proc-macro-srv",
  "analysis",
  "src",
]
sanitizers = true
profiler = true

# Generating docs fails with the wasm32-* targets
docs = false

[install]
prefix = "/usr"

[rust]
codegen-units = 1
codegen-units-std = 1
debuginfo-level = 2
debuginfo-level-std = 2
channel = "stable"
rpath = false
frame-pointers = true
lld = false
use-lld = "external"
llvm-bitcode-linker = false
deny-warnings = false
backtrace-on-ice = true
remap-debuginfo = false
jemalloc = true
lto = "fat"

[dist]
compression-formats = ["gz"]
compression-profile = "fast"

[target.x86_64-unknown-linux-gnu]
cc = "/usr/bin/gcc"
cxx = "/usr/bin/g++"
ar = "/usr/bin/gcc-ar"
ranlib = "/usr/bin/gcc-ranlib"
llvm-config = "/usr/bin/llvm-config"

[target.i686-unknown-linux-gnu]
cc = "/usr/bin/gcc"
cxx = "/usr/bin/g++"
ar = "/usr/bin/gcc-ar"
ranlib = "/usr/bin/gcc-ranlib"

[target.x86_64-unknown-linux-musl]
cc = "/usr/bin/musl-gcc"
cxx = "/usr/bin/g++"
ar = "/usr/bin/gcc-ar"
ranlib = "/usr/bin/gcc-ranlib"
sanitizers = false
musl-root = "/usr/lib/musl"

[target.aarch64-unknown-linux-gnu]
cc = "/usr/bin/aarch64-linux-gnu-gcc"
cxx = "/usr/bin/aarch64-linux-gnu-g++"
ar = "/usr/bin/aarch64-linux-gnu-gcc-ar"
ranlib = "/usr/bin/aarch64-linux-gnu-gcc-ranlib"
linker = "/usr/bin/aarch64-linux-gnu-gcc"
default-linker = "aarch64-linux-gnu-gcc"

[target.aarch64-unknown-linux-musl]
cc = "/usr/aarch64-linux-musl/bin/musl-gcc"
cxx = "/usr/bin/aarch64-linux-gnu-g++"
ar = "/usr/bin/aarch64-linux-gnu-gcc-ar"
ranlib = "/usr/bin/aarch64-linux-gnu-gcc-ranlib"
linker = "/usr/bin/aarch64-linux-gnu-gcc"
default-linker = "aarch64-linux-gnu-gcc"
sanitizers = false
musl-root = "/usr/aarch64-linux-musl/lib/musl"

[target.wasm32-unknown-unknown]
cc = "/usr/bin/clang"
cxx = "/usr/bin/clang++"
ar = "/usr/bin/llvm-ar"
ranlib = "/usr/bin/llvm-ranlib"
linker = "/usr/bin/wasm-ld"
default-linker = "wasm-ld"
sanitizers = false
profiler = false

[target.wasm32v1-none]
cc = "/usr/bin/clang"
cxx = "/usr/bin/clang++"
ar = "/usr/bin/llvm-ar"
ranlib = "/usr/bin/llvm-ranlib"
linker = "/usr/bin/wasm-ld"
default-linker = "wasm-ld"
sanitizers = false
profiler = false

[target.wasm32-wasip1]
cc = "/usr/bin/clang"
cxx = "/usr/bin/clang++"
ar = "/usr/bin/llvm-ar"
ranlib = "/usr/bin/llvm-ranlib"
linker = "/usr/bin/wasm-ld"
default-linker = "wasm-ld"
sanitizers = false
profiler = false
wasi-root = "/usr/share/wasi-sysroot"

[target.wasm32-wasip1-threads]
cc = "/usr/bin/clang"
cxx = "/usr/bin/clang++"
ar = "/usr/bin/llvm-ar"
ranlib = "/usr/bin/llvm-ranlib"
linker = "/usr/bin/wasm-ld"
default-linker = "wasm-ld"
sanitizers = false
profiler = false
wasi-root = "/usr/share/wasi-sysroot"

[target.wasm32-wasip2]
cc = "/usr/bin/clang"
cxx = "/usr/bin/clang++"
ar = "/usr/bin/llvm-ar"
ranlib = "/usr/bin/llvm-ranlib"
linker = "/usr/bin/wasm-ld"
default-linker = "wasm-ld"
sanitizers = false
profiler = false
wasi-root = "/usr/share/wasi-sysroot"
END
}

_pick() {
  local p="$1" f d; shift
  for f; do
    d="$srcdir/$p/${f#$pkgdir/}"
    mkdir -p "$(dirname "$d")"
    mv "$f" "$d"
    rmdir -p --ignore-fail-on-non-empty "$(dirname "$f")"
  done
}

build() {
  cd rustc-$pkgver-src

  export RUST_BACKTRACE=1
  unset CFLAGS CXXFLAGS LDFLAGS

  DESTDIR="$srcdir/dest-rust" python ./x.py install -j "$(nproc)"

  cd ../dest-rust

  # delete unnecessary files, e.g. files only used for the uninstall script
  rm -v usr/lib/rustlib/{components,install.log,rust-installer-version,uninstall.sh}
  rm -v usr/lib/rustlib/manifest-*

  # licenses for main rust package
  local ldir="usr/share/licenses/rust" f d
  mkdir -p "$ldir"
  for f in usr/share/doc/*/{COPYRIGHT,LICENSE}*; do
    d="$(dirname "$f")"
    case $f in
      */LICENSE-APACHE) rm -v "$f" ;;
      *) mv -v "$f" "$ldir/${f##*/}.${d##*/}" ;;
    esac
    rmdir -p --ignore-fail-on-non-empty "$d"
  done

  # rustbuild always installs copies of the shared libraries to /usr/lib,
  # overwrite them with symlinks to the per-architecture versions
  mkdir -pv usr/lib32
  ln -srvft usr/lib   usr/lib/rustlib/x86_64-unknown-linux-gnu/lib/*.so
  ln -srvft usr/lib32 usr/lib/rustlib/i686-unknown-linux-gnu/lib/*.so

  # Symlink the "self-contained" linker to our system lld
  mkdir -pv usr/lib/rustlib/x86_64-unknown-linux-gnu/bin/gcc-ld
  ln -srvf  usr/bin/lld          usr/lib/rustlib/x86_64-unknown-linux-gnu/bin/rust-lld
  ln -srvf  usr/bin/llvm-objcopy usr/lib/rustlib/x86_64-unknown-linux-gnu/bin/rust-objcopy
  ln -srvft usr/lib/rustlib/x86_64-unknown-linux-gnu/bin/gcc-ld usr/bin/{ld.lld,ld64.lld,lld-link,wasm-ld}

  _pick dest-i686 usr/lib/rustlib/i686-unknown-linux-gnu usr/lib32
  _pick dest-musl usr/lib/rustlib/x86_64-unknown-linux-musl
  _pick dest-aarch64-gnu usr/lib/rustlib/aarch64-unknown-linux-gnu
  _pick dest-aarch64-musl usr/lib/rustlib/aarch64-unknown-linux-musl
  _pick dest-wasm usr/lib/rustlib/wasm32{,v1}-*
  _pick dest-src  usr/lib/rustlib/src
}

package_rust() {
  optdepends=(
    'gdb: rust-gdb script'
    'lldb: rust-lldb script'
  )
  provides=(
    cargo
    rustfmt
  )
  conflicts=(
    cargo
    'rust-docs<1:1.56.1-3'
    rustfmt
  )
  replaces=(
    cargo
    cargo-tree
    'rust-docs<1:1.56.1-3'
    rustfmt
  )

  cp -a dest-rust/* "$pkgdir"
}

package_lib32-rust-libs() {
  pkgdesc="32-bit target and libraries for Rust"
  depends=(
    lib32-gcc-libs
    lib32-glibc
    rust
  )
  provides=(lib32-rust)
  conflicts=(lib32-rust)
  replaces=(lib32-rust)

  cp -a dest-i686/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

package_rust-musl() {
  pkgdesc="Musl target for Rust"
  depends=(rust)

  cp -a dest-musl/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

package_rust-aarch64-gnu() {
  pkgdesc="AArch64 GNU target for Rust"
  depends=(
    aarch64-linux-gnu-gcc
    aarch64-linux-gnu-glibc
    rust
  )

  cp -a dest-aarch64-gnu/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

package_rust-aarch64-musl() {
  pkgdesc="AArch64 Musl target for Rust"
  depends=(
    aarch64-linux-gnu-gcc
    rust
  )

  cp -a dest-aarch64-musl/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

package_rust-wasm() {
  pkgdesc="WebAssembly targets for Rust"
  depends=(
    rust
    wasm-component-ld
  )

  cp -a dest-wasm/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

package_rust-src() {
  pkgdesc="Source code for the Rust standard library"
  depends=(rust)

  cp -a dest-src/* "$pkgdir"

  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
}

# vim:set ts=2 sw=2 et:
