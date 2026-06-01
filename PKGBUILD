pkgname=sandlock
pkgver=0.8.1
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('5bf9dff340c159708eefd77cfd8a361a937a9474ec416f2cb010ceb26fc2bd7d6cf0bb9efa0ce3f0395ef9497219d228f17e0aa5e1a9c60dad8e00d66f298305')
b2sums=('3e441f03e9f809837086c7a81cebf8bbe92b3481a575886e3565350615726509d46ee7801e5f99519b161ff4a9ff7cbf714075f69048bd28bb09732e10a08ea6')

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
  install -Dm755 -t "${pkgdir}/usr/bin/" target/release/sandlock
  install -Dm755 -t "${pkgdir}/usr/lib/" target/release/libsandlock_ffi.a target/release/libsandlock_ffi.so
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
