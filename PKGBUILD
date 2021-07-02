# Maintainer: zer0def <zer0def@github>
pkgname=toxproxy
pkgver=0.99.7
pkgrel=1
pkgdesc="Offline messages for Tox"
url="https://github.com/zoff99/toxproxy"
arch=('x86_64')
license=('AGPL3')
makedepends=('git' 'ffmpeg')
depends=('libsodium' 'curl')
source=(
  'c-toxcore::git+https://github.com/zoff99/c-toxcore#branch=zoff99/zoxcore_local_fork'
  #'c-toxcore::git+https://github.com/zoff99/c-toxcore#commit=5e5c6ad18092b3d73cc5cc8643ddb18adb659a72'
  'toxproxy::git+https://github.com/zoff99/ToxProxy#branch=zoff99/tweaks_001'
)
sha512sums=('SKIP' 'SKIP')
b2sums=('SKIP' 'SKIP')

build() {
  pushd "${srcdir}/c-toxcore"
  ./autogen.sh
  ./configure \
    --disable-soname-versions \
    --disable-testing \
    --prefix="${srcdir}/zoxcore"
  make
  make install

  pushd "${srcdir}/toxproxy/src"
  gcc ToxProxy.c \
    -lm -ldl -lpthread -lsodium -lcurl \
    "${srcdir}/c-toxcore/build/.libs/libtoxav.a" \
    "${srcdir}/c-toxcore/build/.libs/libtoxcore.a" \
    "${srcdir}/c-toxcore/build/.libs/libtoxencryptsave.a" \
    -I "${srcdir}/zoxcore/include" \
    -L "${srcdir}/zoxcore/lib" \
    -o "${srcdir}/toxproxy/toxproxy"
}

package() {
  install -Dm755 "${srcdir}/toxproxy/toxproxy" "${pkgdir}/usr/bin/toxproxy"
}
