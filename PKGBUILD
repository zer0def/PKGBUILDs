pkgname=sandlock
pkgver=0.8.6
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('69172badb27e149cdae84dc4e47a32358bad97629bc091c6025275ceeceaa6a69b7bf1d1418c241c67eb50afc93b3f63f7005fb7fa7d7303b81a24fa19d082a6')
b2sums=('c7e13f8cbe5429083cf66fd99a60b758cf8b295ebac0387f832e900ab680c747bff8edc9dc56305de07638a49f6f3567212bbf152d4065ebbdee9204dc6e98ee')

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
