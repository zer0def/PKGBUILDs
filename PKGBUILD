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
epoch=1
pkgver=1.88.0
pkgrel=1
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
  lld
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

  # Use our wasm-ld
  0004-compiler-Use-wasm-ld-for-wasm-targets.patch

  # Use our aarch64-linux-gnu-gcc
  0005-compiler-Use-aarch64-linux-gnu-gcc-to-link-aarch64-t.patch
)
b2sums=('5c672e9cab0c6dd3229efdd63e2d81a728e488c72870db9be306f0fea9078005ca3af74fb1070b19f9610e83b166df5ef4e642340647964ce622edea38b35d61'
        'SKIP'
        'e110a262a049033f3664fc340281dfe39df918bf371bf610e4ceb4d6f6b7398759db4e3989f429e306f369c06342f9fcf587e7456a835dd33bcf39fc354dd27d'
        '85826aac6b5ee904cd456d9b2c07ce0fc7d0f49e53a2ef7e8ea94c088a158493e7f8fa409c310bcdd967aa23f96d1dd0876999833182fa987d7d37dba40d7cee'
        'cd3ce8900c3135295f42171a94d72d83c73b78fb4ac899382326f91ac7a10fc2f71a3ead9a3e5576341d96aeae2ec08e0fcfea2b9a1a25d7e9d6f0e957e70acf'
        '2317343e6b986d1ec1fb6d035fb6d8933245704b5be1b3e4a032ad14300d8a338087c52e53a6dff4ceda52232ce7f21dd8ad536c9d4da04faee6a9b79a9670b6'
        'e9f6b2d58e2a845d8841c0eb2dbde1d903bb6bed1871d090cf8928fe4a2dd5ece0cf157f3f263cf980d1dba7fd9c47565340bc1e19ecd2f28ffb297fe70da30d')
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
change-id = 140732

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
    lld
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
