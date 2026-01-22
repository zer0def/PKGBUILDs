# Maintainer: Johannes Löthberg <johannes@kyriasis.com>
# Maintainer: Jan Alexander Steffens (heftig) <heftig@archlinux.org>
# Contributor: Alexander F Rødseth <xyproto@archlinux.org>
# Contributor: Daniel Micay <danielmicay@gmail.com>
# Contributor: userwithuid <userwithuid@gmail.com>

pkgbase=rust
pkgname=(
  rust
  rust-musl
  rust-src
  rust-wasm

  # x86_64 only
  lib32-rust-libs
  rust-aarch64-gnu
  rust-aarch64-musl
)
pkgver=1.93.0
pkgrel=1
epoch=1
pkgdesc="Systems programming language focused on safety, speed and concurrency"
url=https://www.rust-lang.org/
arch=(
  aarch64
  x86_64
)
license=("Apache-2.0 OR MIT")
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
  clang
  cmake
  libffi
  llvm
  musl
  ninja
  perl
  python
  rust
  wasi-libc
  wasm-component-ld
)
makedepends_x86_64=(
  aarch64-linux-gnu-gcc
  aarch64-linux-gnu-glibc
  lib32-gcc-libs
  lib32-glibc
  musl-aarch64
)
checkdepends=(
  gdb
  procps-ng
)
options=(
  !emptydirs
  !lto
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

  # Use our target-specific GCCs, like aarch64-linux-gnu-gcc
  0006-compiler-Use-target-specific-GCC-linkers.patch

  # Prefer "lib" over "lib64"
  0007-compiler-Swap-primary-and-secondary-lib-dirs.patch
)
source_aarch64=(bootstrap.aarch64.toml)
source_x86_64=(bootstrap.x86_64.toml)
b2sums=('ab35dfebfc8c9beb0b93fa564d7178da225f47591fb5de90566d59fb0dcf55a275f014c287805df3f901aba80374e92f5bdd93ac925585a869eed5dcd2571d48'
        'SKIP'
        'f4a836270fb15b419f05db590c0f95f95c171addf85bf7324257690df29eac9139e53c0b73dd74b56921cc0c238e92bb0f3ba3b0969fac9c5cc90caf2cad0384'
        '26edd385582537da6ef2c937aae70122fb6129bc18f43aca155bec010007da63d121a6aa07363c6d35bd7c6b8c799c1e0429d34787d4cc86125c5d176b5678cb'
        'de6d1a7e4c1da3817cd0de12ec5570a71de14bd57b9233d87068338db8211c6fb099178ca7e73cf015cabec93b308a5949bbabdd34e51027c6a940b322c02d9d'
        '00a637dde35e9df1e8852ea647fc9af043efb9c9adae8f2904dbf3692a2ab09ecbbd75147314d8a41802b5c68fce515247c8d21bc7ba28663e768ee9adbacd8d'
        '29b134cd1ef57ae3a9c46985ec1221709def57472c28f1e737a3d4f27c105c4bc22d6cccc48c0f4a0677460277ce57c3a0d381368d99c8a1f4dd1bf7e7b41970'
        '8015b14bd00f412c0935961fce5f9671fe3d51256a70eacbf61573c4c8ae35f3cd81372681fe406395ca571363e9f9a9c5b40969e79513f22d808e677a841ae7'
        'b8e3d23c3a7617e231246465a264708789152abfc73203d901d64290701fabffff59d600fc8ecb1ec5d507313125d17c4040ec769474f4d58ea159d9cafc3910')
b2sums_aarch64=('63ce33811457d6f271ea92ef0b3c2c0ae81d0c2cc8545273ad308237131c6eb1807d56e4de75037b525d19b6d405f9c5558665d85bd821a2d05ae40c1f9f2926')
b2sums_x86_64=('b1808412ce71ec37b80bc44034e13fb4918577052b5cae0ee4809ffc499c7ccfeb01dfb8a1c49141a0b614861875680f80e6fff4add8c015a4c4becda3859e1e')
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
  sed -e "s|%description%|Arch Linux $pkgbase $epoch:$pkgver-$pkgrel|g" \
      -e "s|%clangdir%|$clangdir|g" \
      "$srcdir/bootstrap.${CARCH}.toml" > bootstrap.toml
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
  ln -srvft usr/lib usr/lib/rustlib/${CARCH}-unknown-linux-gnu/lib/*.so

  # Symlink the "self-contained" linker to our system lld
  mkdir -pv usr/lib/rustlib/${CARCH}-unknown-linux-gnu/bin/gcc-ld
  ln -srvf  usr/bin/lld          usr/lib/rustlib/${CARCH}-unknown-linux-gnu/bin/rust-lld
  ln -srvf  usr/bin/llvm-objcopy usr/lib/rustlib/${CARCH}-unknown-linux-gnu/bin/rust-objcopy
  ln -srvft usr/lib/rustlib/${CARCH}-unknown-linux-gnu/bin/gcc-ld usr/bin/{ld.lld,ld64.lld,lld-link,wasm-ld}

  _pick dest-musl usr/lib/rustlib/${CARCH}-unknown-linux-musl
  _pick dest-wasm usr/lib/rustlib/wasm32{,v1}-*
  _pick dest-src  usr/lib/rustlib/src

  if [[ $CARCH == x86_64 ]]; then
    _pick dest-i686 usr/lib/rustlib/i686-unknown-linux-gnu
    _pick dest-aarch64-gnu usr/lib/rustlib/aarch64-unknown-linux-gnu
    _pick dest-aarch64-musl usr/lib/rustlib/aarch64-unknown-linux-musl
  fi
}

_install_licenses() {
  install -Dt "$pkgdir/usr/share/licenses/$pkgname" -m644 \
    rustc-$pkgver-src/{COPYRIGHT,LICENSE-MIT}
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

package_rust-musl() {
  pkgdesc="Musl target for Rust"
  depends=(rust)

  cp -a dest-musl/* "$pkgdir"
  _install_licenses
}

package_rust-src() {
  pkgdesc="Source code for the Rust standard library"
  depends=(rust)

  cp -a dest-src/* "$pkgdir"
  _install_licenses
}

package_rust-wasm() {
  pkgdesc="WebAssembly targets for Rust"
  depends=(
    rust
    wasm-component-ld
  )

  cp -a dest-wasm/* "$pkgdir"
  _install_licenses
}

package_lib32-rust-libs() {
  pkgdesc="32-bit target and libraries for Rust"
  arch=(x86_64)
  depends=(
    lib32-gcc-libs
    lib32-glibc
    rust
  )
  provides=(lib32-rust)
  conflicts=(lib32-rust)
  replaces=(lib32-rust)

  cp -a dest-i686/* "$pkgdir"
  _install_licenses

  cd "$pkgdir"
  mkdir -pv usr/lib32
  ln -srvft usr/lib32 usr/lib/rustlib/i686-unknown-linux-gnu/lib/*.so
}

package_rust-aarch64-gnu() {
  pkgdesc="AArch64 GNU target for Rust"
  arch=(x86_64)
  depends=(
    aarch64-linux-gnu-gcc
    aarch64-linux-gnu-glibc
    rust
  )

  cp -a dest-aarch64-gnu/* "$pkgdir"
  _install_licenses
}

package_rust-aarch64-musl() {
  pkgdesc="AArch64 Musl target for Rust"
  arch=(x86_64)
  depends=(
    aarch64-linux-gnu-gcc
    rust
  )

  cp -a dest-aarch64-musl/* "$pkgdir"
  _install_licenses
}

# vim:set ts=2 sw=2 et:
