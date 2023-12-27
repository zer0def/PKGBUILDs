# Maintainer: Jiachen Yang <farseerfc@gmail.com>
# AUR Maintainer: Vlad M. <vlad@archlinux.net>

pkgname=toxic
pkgdesc='CLI Tox client'
license=('GPL3')
pkgver=0.13.0
pkgrel=1
depends=(
  'curl'
  'freealut'
  'libnotify'
  'qrencode'
  'libx11'
  #'toxcore'
)
makedepends=("git")
arch=('x86_64')
url='https://github.com/JFreegman/toxic'
source=(
  # sourced from build script
  "c-toxcore::git+https://github.com/TokTok/c-toxcore#commit=425216d9eca8b3c2afd48e52c04c6226b920303a"
  "cmp::git+https://github.com/TokTok/cmp#commit=074e0df43e8a61ea938c4f77f65d1fbccc0c3bf9"
  "${pkgname}::git+${url}#tag=v${pkgver}"
)
sha512sums=('SKIP' 'SKIP' 'SKIP')
b2sums=('SKIP' 'SKIP' 'SKIP')
validpgpkeys=('BABD00573A065BFA90D53D563627F3144076AE63')  # Jfreegman <jfreegman@gmail.com>
_toxcore_prefix=/usr/lib/${pkgname}

build() {
  mkdir -p "${srcdir}/c-toxcore/build" "${srcdir}/c-toxcore/pkgdir"
  pushd "${srcdir}/c-toxcore/third_party"
  rmdir cmp
  ln -s ../../cmp
  popd

  pushd "${srcdir}/c-toxcore/build"
  cmake .. \
    -DCMAKE_INSTALL_PREFIX="${_toxcore_prefix}" \
    -DCMAKE_BUILD_TYPE=Release \
    -DBOOTSTRAP_DAEMON=OFF
  make
  #make test
  make DESTDIR="${srcdir}/c-toxcore/pkgdir" install
  popd

  pushd "${srcdir}/${pkgname}"
  make PREFIX=/usr DISABLE_GAMES=1 ENABLE_TOX_EXPERIMENTAL=1 \
    USER_CFLAGS=" -I${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/include -L${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib"
  popd
}

package() {
  pushd "${srcdir}/c-toxcore/build"
  make DESTDIR="${pkgdir}" install
  popd

  cd "${srcdir}/${pkgname}"
  make PREFIX=/usr DISABLE_GAMES=1 ENABLE_TOX_EXPERIMENTAL=1 \
    USER_CFLAGS=" -I${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/include -L${srcdir}/c-toxcore/pkgdir${_toxcore_prefix}/lib" \
    DESTDIR="${pkgdir}" \
    install

  mv "${pkgdir}/usr/bin/${pkgname}" "${pkgdir}${_toxcore_prefix}/bin/${pkgname}"
  cat <<EOF >"${pkgdir}/usr/bin/toxic"
#!/bin/sh
LD_LIBRARY_PATH="${_toxcore_prefix}/lib\${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" "\${0%/*}/../lib/${pkgname}/bin/toxic"
EOF
  chmod +x "${pkgdir}/usr/bin/toxic"
}
