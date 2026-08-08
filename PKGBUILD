pkgname=sandlock
pkgver=0.8.4
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('0e4ebf9be3bcf6bc3cc58ffc7cb2ec3d4a955fa59a1a446a1d346e689fa9be10242bf9a28e904fe55fa76c6addced12f14a31e711b82ad576caa98d9f7b2371d')
b2sums=('39e7f8d0e6a72d68adfe3ff33d4575d9e160d1335d948a5d475d3d53b397e1643532e87b29627040b58636ac8cc2688ee36cae59742a3f95d59be4163f5abeed')

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
