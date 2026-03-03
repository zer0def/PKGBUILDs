# Maintainer: Felix Yan <felixonmars@archlinux.org>
# Contributor: Sébastien Luttringer
# Contributor: Lawrence Lee <valheru@facticius.net>
# Contributor: Phillip Marvin <phillip.marvin@gmail.com>
# Contributor: keystone <phillip.marvin@gmail.com>

_pkgname=libunwind
pkgname="${_pkgname}-musl"
pkgver=1.8.2
pkgrel=1
pkgdesc="Determine and manipulate the call-chain of a program"
url="https://www.nongnu.org/libunwind/"
arch=(x86_64)
license=(MIT)
depends=(
  libucontext
  musl
  xz
  zlib
)
makedepends=(texlive-binextra)
provides=(
  libunwind-{coredump,ptrace,setjmp,x86_64}.so
  libunwind.so
)
options=('staticlibs')
source=(
  "https://github.com/libunwind/libunwind/releases/download/v${pkgver}/libunwind-${pkgver}.tar.gz"{,.asc}
  https://github.com/libunwind/libunwind/commit/b67d508a.patch
  fix-libunwind-pc-in.patch
)
sha512sums=(
  'f1ff26763c1b2e68948413c4aec22303b6c886425a8264eb65fbd58fc202f79c7b04bd4784bd8499850d08933f0e363cfa3a7d177efdadc223ed0254bc381345' 'SKIP'
  '1d117ac31e1aa3610c6499c531a7b8bf0b82ce493c8f0c723336006d861b0b76645169b102f330a203f3a208a55212addacec1a98591efcb8965367801174cd0'
  '52b568846db7adb50a181f17635e53c8a6d99d6d13c3d35fd8c9a5de5ec0a1ad18d8462c4ae4483d413d4b5aa7375017c36b5cb49805b6f67d96cffafbd02548'
)
b2sums=(
  'b198b186c616adf1302d153a12949ceab07608f8133e42454e6b10bdf9518a514ef15d5ba52ef75b11e5f73fa330205accd415cfc30e6fa3ddd9724cbb088737' 'SKIP'
  '756ced55c34a33d55cc11f61c32230de820aede55d562aa94143c2f5adb7f408ed2f2d5c48642b035ec4d3ebc59175e6f4b889f712db2556b80a8002d91aa036'
  '6a3593bc03f4960a861b7479384a182fde9685e5de411cb2267fcb99cff86d412a5eb690e1bcc957d2cedf564bfd4601faee978fda5c79cc921da8ca0c6e410a'
)
validpgpkeys=(
  F86EB09F72717426F20D36470A0FF845B7DB3427  # Stephen M. Webb <stephen.webb@bregmasoft.ca>
)
export CC=musl-gcc CXX=musl-gcc LDFLAGS="${LDFLAGS} -lucontext"
_root=/usr/lib/musl

prepare() {
  cd "${srcdir}/${_pkgname}-${pkgver}"
  patch -Np1 -i "${srcdir}/b67d508a.patch"  # Fix build with GCC 15
  patch -Np1 -i "${srcdir}/fix-libunwind-pc-in.patch"
  autoreconf -fvi
}

build() {
  local configure_options=(
    --prefix="${_root}"
    --sysconfdir=/etc
    --localstatedir=/var
  )

  cd "${srcdir}/${_pkgname}-${pkgver}"
  ./configure "${configure_options[@]}"
  sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool
  make
}

check() {
  cd "${srcdir}/${_pkgname}-${pkgver}"
  #make check  # https://github.com/libunwind/libunwind/issues/164
}

package() {
  cd "${srcdir}/${_pkgname}-${pkgver}"
  make DESTDIR="${pkgdir}" install
  install -Dm 644 COPYING -t "${pkgdir}/usr/share/licenses/${pkgname}"
  rm -r "${pkgdir}${_root}/libexec"
}

# vim:set sw=2 sts=-1 et:
