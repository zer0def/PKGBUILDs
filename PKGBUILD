pkgname=sandlock
pkgver=0.8.2
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('776a55db4521649842515a7b791062f58f1b883cda79924b4dc1ab6f708b7349dd8f3aa51162cd5604fe63bdf894dd40cf5c6c56e5793cb88e130f23cdb590d7')
b2sums=('ef65fc484ea62b6a1d33a161bd9308b047546975bc2c3b9594f07f130e0e0f0b0aaa2e69fc63a9d3fba53fc52eafdf98cb1c32c693f25567252f46e829f1473a')

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
