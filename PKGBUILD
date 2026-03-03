# Maintainer: Jelle van der Waa <jelle@archlinux.org>

_pkgname=libucontext
pkgname="${_pkgname}-musl"
pkgver=1.5
pkgrel=1
pkgdesc="ucontext implementation featuring glibc-compatible ABI"
arch=(x86_64)
url="https://github.com/kaniini/libucontext"
license=("ISC")
depends=(musl)
makedepends=(scdoc meson git)
options=('staticlibs')
source=("git+https://github.com/kaniini/libucontext#tag=${_pkgname}-${pkgver}")
sha256sums=('e7702535979f6da207f267436bcbe3b4a802bbd641913441adcc1fb6efae58ea')
export CC=musl-gcc CXX=musl-gcc
_root=/usr/lib/musl

build() {
  meson setup \
    --prefix "${_root}" --libexecdir lib --sbindir bin \
    --buildtype plain --auto-features enabled --wrap-mode nodownload \
    -D b_pie=true -D python.bytecompile=1 \
    -Ddocs=true -Dfreestanding=true "${_pkgname}" build
  meson compile -C build
}

check() {
  meson test -C build
}

package() {
  meson install -C build --destdir "${pkgdir}"
  install -Dm644 "${_pkgname}/LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
