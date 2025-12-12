# Maintainer: Jelle van der Waa <jelle@archlinux.org>

pkgname=libucontext
pkgver=1.5
pkgrel=1
pkgdesc="ucontext implementation featuring glibc-compatible ABI"
arch=(x86_64)
url="https://github.com/kaniini/libucontext"
license=("ISC")
depends=(glibc)
makedepends=(scdoc meson git)
source=("git+https://github.com/kaniini/libucontext#tag=${pkgname}-${pkgver}")
sha256sums=('e7702535979f6da207f267436bcbe3b4a802bbd641913441adcc1fb6efae58ea')

build() {
  arch-meson -Ddocs=true -Dfreestanding=true ${pkgname} build
  meson compile -C build
}

check() {
  meson test -C build
}

package() {
  meson install -C build --destdir "$pkgdir"
  install -Dm644 ${pkgname}/LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
