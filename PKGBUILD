pkgname=sandlock
pkgver=0.8.0
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('ec2882b6f6c30de404d103494f1dd81efbe40dfec5fe84950ecda4f49ec323886ef33e6eb75a56f551a1a8b8f93e772dfe5f9e543e334278af3b459ad9b2d6a9')
b2sums=('6830c8cd9c897b53a95b7e42fb969043fc8d352b56640e25cdb187619113b20883f359ce0129171963db0b411a85483dcd6b7a3845b763b5dee7e222c3f9f758')

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
