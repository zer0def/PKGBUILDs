pkgname=sandlock
pkgver=0.8.8
pkgrel=0
pkgdesc="A process-based sandbox for Linux, no container, no VM, no root. "
arch=('x86_64')
url="https://github.com/multikernel/sandlock"
license=(Apache)
options=('!lto')
depends=('glibc' 'libgcc')
makedepends=('cargo')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/multikernel/sandlock/archive/refs/tags/v${pkgver}.tar.gz")
sha512sums=('6c62114cff5a1c4b4573bd9c2c676bba62032a512a518ff47d7aefb361c0355175eb7a36d54c36ecea3f8717b3208ec93a4de4d13eeecc62a37eba41045d606e')
b2sums=('05bb3222899a67a73801a8cb68a9afbbb7b00c9b1850eb85699bb65b98d0d1e2d1cf2389ab4aadffe3af20b2c8561f0cea999eafaadba09462b7b934148baac1')

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
