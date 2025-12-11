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
pkgver=1.92.0
pkgrel=1
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
  compiler-rt
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

  # Fix build with system rustc
  # https://github.com/rust-lang/rust/issues/143735
  0003-bootstrap-Workaround-for-system-stage0.patch

  # Use our *-pc-linux-gnu targets, making LTO with clang simpler
  0004-compiler-Change-LLVM-targets.patch

  # Use our ld.lld
  0005-compiler-Use-ld.lld-by-default.patch

  # Use our aarch64-linux-gnu-gcc
  0006-compiler-Use-aarch64-linux-gnu-gcc-to-link-aarch64-t.patch

  # Prefer "lib" over "lib64"
  0007-compiler-Swap-primary-and-secondary-lib-dirs.patch
)
b2sums=('9d8ad06c26a3996d2771c7011703f56858287b6450ee6bfc26378dd2c25994f6084fe52b1dc3e6867c4919887a2f5c7197e090269209ec225c594479b118fa93'
        'SKIP'
        '5f42356ef9dc8071df9284d5adcce2cba37072684431c1dad8bbbe4b1b3d31f3bdd18b48252fc44e9d0aa39e33342936be3821106509d99183d88e0f53b4645f'
        '06e3054314c80743c533f70b1d04ba47f9d4e04f94cf800b119bf33a6611b87c0732407328c390057973a3509ca0a0dbbfcecd9bc6d227968c33b18e8840b23c'
        '9e0139640c87ca3c3a550ce95e80a36368e101b124b99cb2a30b7b594b60e921350d65556784e801500ea59135f79cb4faf07a091223032092173ec6eae3397b'
        'effaaae130594ba2138aa150b7c509705a72aab8a4ab27ebc594ceee80ee790d6654d8cd3b7cd2ed28d2e69fb449928fff95538c9af007ec81869980e71b49f1'
        'f122bd84206ef82b72a6a9af6210a661fe8a6705b353f6bafefe409aebaa3a9bb90b6533867ac44748faf502b5363f59b1e835cb5143f9a546bbc5af5f97c558'
        '40e14ccc8b5dfff5d87f43a8763d1d2a49435c7a76633a920648a43dd25df0ab056107722ccdc574d9d603322699c6f3990878e19ab25d5e0117689d8f6b99b8'
        'd80b9cfc4cbba2ad6800606bdf14183de990db33954b9ec63d393493ab77c82714a2069e20495a55c13c778d8ea052ccfbaa7d5b79716c494281c6b34e990137')
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

  local clangdir
  clangdir="$(clang -print-resource-dir)"

  cat >bootstrap.toml <<END
# see src/bootstrap/defaults/
profile = "dist"

# see src/bootstrap/src/utils/change_tracker.rs
change-id = 147888

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
bootstrap-override-lld = "external"
llvm-bitcode-linker = false
deny-warnings = false
backtrace-on-ice = true
remap-debuginfo = false
lto = "fat"
parallel-frontend-threads = 0

[dist]
compression-formats = ["gz"]
compression-profile = "fast"

[target.x86_64-unknown-linux-gnu]
cc = "/usr/bin/gcc"
cxx = "/usr/bin/g++"
ar = "/usr/bin/gcc-ar"
ranlib = "/usr/bin/gcc-ranlib"
llvm-config = "/usr/bin/llvm-config"
optimized-compiler-builtins = "$clangdir/lib/linux/libclang_rt.builtins-x86_64.a"

[target.i686-unknown-linux-gnu]
cc = "/usr/bin/gcc"
cxx = "/usr/bin/g++"
ar = "/usr/bin/gcc-ar"
ranlib = "/usr/bin/gcc-ranlib"
optimized-compiler-builtins = "$clangdir/lib/linux/libclang_rt.builtins-i386.a"

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
  rm -v etc/target-spec-json-schema.json
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
