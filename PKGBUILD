pkgname=sandlock
pkgver=0.8.5
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('71f9e4904efef2299ffd1c155fb1bd4f463671d0fbd43dc68b707e0f28bcbb4df4ab7aacb8de6643834da8aaa166e303b93d636572e249efccaf510a94a483a3')
b2sums=('02ab893faf2e2967b83ceb807bb5b31790f36e5c0a074d3cee5508e82fe2f357410687793b8559e089e00ca6505e5f6f7c44717d3b7ec8d99bc8ca8820cb99d0')

build() {
  cd "${srcdir}/${pkgname}-${pkgver}"
  cargo build --release --locked
}

check() {
  cd "${srcdir}/${pkgname}-${pkgver}"
  cargo test --release --locked||:
}

package() {
  cd "${srcdir}/${pkgname}-${pkgver}"
  install -Dm755 -t "${pkgdir}/usr/bin/" target/release/sandlock target/release/sandlock-oci
  install -Dm755 -t "${pkgdir}/usr/lib/" target/release/libsandlock_ffi.a target/release/libsandlock_ffi.so
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
