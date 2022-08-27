pkgname=box86-git-bin
pkgver=0.2.6
pkgrel=1
pkgdesc='Linux Userspace x86 Emulator with a twist'
arch=('aarch64' 'armv7h' 'armv8l')
url='https://github.com/ptitSeb/box86'
license=('MIT')
depends=('gcc-libs' 'libpng12')
optdepends=('libstdc++5')
makedepends=('jq')
provides=('box86' 'box86-git')
conflicts=('box86' 'box86-git')
source=(
  "box86.zip::${url}"
  'box86.sh'
  "box86-git::git+${url}#branch=master"
)
sha512sums=(
  'SKIP'
  'baf57544f107a41b80ab6be3e1feda937b38276a3c32e35154818d3049a61507d9bb0a909ef088118ee4a2d1eb7feac5320c47e8368ef5e9a7c676c0561eb9e2'
  'SKIP'
)
b2sums=(
  'SKIP'
  'ae6622991aba0227539e6b77424918c24cb6ea7726b85dfc3da81ca3481b5676597b148fd1e80b5f6742849eafa47668f5ac8a8ad4a051304cb7350ff5d18cdb'
  'SKIP'
)
b3sums=(
  'SKIP'
  '85d17f12d7059c1e4dffddddd5efda2c3156614e0831772260040806ee3bc0be'
  'SKIP'
)
DLAGENTS=("https::/bin/sh $(pwd)/nightly-build-dl.sh %o %u")

package() {
  install -Dm755 "${srcdir}/box86.sh" "${pkgdir}/usr/bin/box86"
  install -Dm755 "${srcdir}/box86" "${pkgdir}/opt/box86/bin/box86"
  install -Dm755 -t "${pkgdir}/opt/box86/lib" "${srcdir}/box86-git/x86lib/"*
}
