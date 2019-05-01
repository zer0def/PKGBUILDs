# Maintainer: Stephan Springer <buzo+arch@Lini.de>
# Contributor: inemum (https://gitlab.com/inemum)
# Contributor: graysky <graysky AT archlinux DOT us>
# Contributor: Fredrick Brennan <copypaste@kittens.ph>

# based on https://git.archlinux.org/svntogit/packages.git/tree/trunk/PKGBUILD?h=packages/sip

pkgbase=('python-sip-pyqt4')
pkgname=('python-sip-pyqt4' 'python2-sip-pyqt4')
pkgver=4.19.16
pkgrel=2
arch=('x86_64')
url='http://www.riverbankcomputing.com/software/sip/intro'
license=('custom:"sip"')
makedepends=('python' 'python2')
source=("https://www.riverbankcomputing.com/static/Downloads/sip/$pkgver/sip-$pkgver.tar.gz")
sha256sums=('184c790d58e9527fc6bdac2bbf8638f3d1b41dea922cad8eb83172b4ba70c620')

prepare() {
  mkdir -p build-pyqt4{,-py2}
}

build() {
  cd "$srcdir"/build-pyqt4
  python ../sip-$pkgver/configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt4.sip --no-tools
  make

  cd "$srcdir"/build-pyqt4-py2
  python2 ../sip-$pkgver/configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt4.sip --no-tools
  make
}

package_python-sip-pyqt4() {
  pkgdesc="Python 3.x SIP bindings for C and C++ libraries (PyQt4 version)"
  depends=('python')

  cd build-pyqt4
  make DESTDIR="$pkgdir" install

  install -Dm644 ../sip-$pkgver/LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}

package_python2-sip-pyqt4() {
  pkgdesc="Python 2.x SIP bindings for C and C++ libraries (PyQt4 version)"
  depends=('python2')

  cd build-pyqt4-py2
  make DESTDIR="$pkgdir" install

  install -Dm644 ../sip-$pkgver/LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}
