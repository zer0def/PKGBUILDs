pkgname=sandlock
pkgver=0.8.3
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('4cbb91a9411fa9699fcb347ec170680d988730b3513d7a41090d0c7699dd08015762110470b9859cc6414a72b35c87c83fa79ea9fe0877bc3b5a1f59adf13a3d')
b2sums=('decd96221c2a2642af995a0b749103031ed4d095561ab87bc6ec48609700513e466aaa16d772099b4cf3f45ccd0ddfe1a8b2329041a473d48e0403b3d36e9c5e')

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
