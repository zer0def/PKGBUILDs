# Maintainer: Jelle van der Waa <jelle@archlinux.org>

pkgname=libucontext
pkgver=1.3.3
pkgrel=1
pkgdesc="ucontext implementation featuring glibc-compatible ABI"
arch=(x86_64)
url="https://github.com/kaniini/libucontext"
license=("ISC")
depends=(glibc)
makedepends=(scdoc meson git)
source=("git+https://github.com/kaniini/libucontext#tag=${pkgname}-${pkgver}")
sha256sums=('9ee8e6e51ae0695b36d9a11ee69bf7e2fd7508c01c2f9e871391b6aa647ec698')

build() {
  arch-meson -Ddocs=true ${pkgname} build
  meson compile -C build
}

check() {
  meson test -C build
}

package() {
  meson install -C build --destdir "$pkgdir"
  install -Dm644 ${pkgname}/LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
