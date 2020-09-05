# Maintainer: Corey Hinshaw <corey(at)electrickite(dot)org>
# Contributor: zer0def <zer0def@github>

pkgname=sbkeys
pkgver=1.0.1
pkgrel=1
pkgdesc="Simple script to generate Secure Boot keys"
arch=('any')
url="https://github.com/electrickite/sbkeys"
license=('GPL3')
depends=('efitools' 'coreutils' 'bash' 'openssl' 'util-linux')

source=('sbkeys')
sha256sums=('adf3afc1012b8d21e4e8c5902483607fa744875d60aebe4164580c3156381744')

package() {
  install -Dm755 sbkeys "${pkgdir}/usr/bin/sbkeys"
}
