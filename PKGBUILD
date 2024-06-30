# Maintainer: zapp-brannigan <fuerst.reinje@web.de>

pkgname=vdoestimator-git
pkgver=r48.3ac5358
pkgrel=1
pkgdesc="Estimate space savings from dm-vdo virtual device "
url="https://github.com/dm-vdo/vdoestimator"
license=('GPL-2.0')
arch=(x86_64)
makedepends=('git')
source=("git+$url.git")
md5sums=('SKIP')

pkgver() {
  cd "${srcdir}/${pkgname%-*}"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

prepare() {
  cd "${srcdir}/${pkgname%-*}"
  make
}
package() {
  cd "${srcdir}/${pkgname%-*}"
  mkdir -p "${pkgdir}/usr/bin"
  make DESTDIR="${pkgdir}" install
}
