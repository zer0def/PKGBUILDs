# Maintainer: Iwan Timmer <irtimmer@gmail.com>

pkgname=moonlight-embedded
pkgver=2.5.3
pkgrel=1
pkgdesc="Gamestream client for embedded devices"
arch=('armv6h' 'armv7h' 'i686' 'x86_64')
url="https://github.com/irtimmer/moonlight-embedded"
license=('GPL')
depends=('curl' 'avahi' 'curl' 'libevdev' 'enet' 'ffmpeg')
makedepends=('libcec')
makedepends_armv7h=('raspberrypi-firmware-tools' 'imx-vpu' 'linux-imx6-headers' 'v4l-utils' 'aml-libs-c1')
makedepends_armv6h=('raspberrypi-firmware-tools')
optdepends=('raspberrypi-firmware-tools: Raspberry Pi support'
            'imx-vpu: i.MX6 support'
            'aml-libs-c1: ODROID-C1 support'
            'libcec: CEC support')
makedepends=('cmake')
source=("https://github.com/irtimmer/moonlight-embedded/releases/download/v$pkgver/$pkgname-$pkgver.tar.xz")
sha512sums=('8124ecfb0f9390f7011629d8107b05ec582dba05d877a68364c639445817594aae1f8c28a9661317b1c4e3247a91a69e32bb890f3bf3bce6078644fb27444121')
b2sums=(    'd29d7c36124d4a961cf76c42448ce145f9e11ed30da2b667136fe062a860283af416a3f06db384fdb2086998f82a0e490017d76fc26a59fe038e00b1f62b8cd9')
b3sums=(    '1407f1bbd81b99580ebd81bc1c4023d9857fcb85aed449a828c75d80a3ada672')

build() {
  mkdir -p build
  cd build
  cmake .. -DCMAKE_INSTALL_LIBDIR=/usr/lib -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_SYSCONFDIR=/etc -DCMAKE_BUILD_TYPE=Release
  make
}

package() {
  cd build
  make DESTDIR="$pkgdir/" install
}
