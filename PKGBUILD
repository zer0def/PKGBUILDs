# Maintainer: Sven-Hendrik Haase <svenstaro@gmail.com>
pkgname=elfx86exts-git
pkgver=v0.4.0.r102.gb4e25a9
pkgrel=1
pkgdesc="Decode ELF and MachO binaries and print out which instruction set extensions they use"
arch=('x86_64')
url="https://github.com/pkgw/elfx86exts"
license=(MIT)
depends=('gcc-libs')
makedepends=('cargo' 'git')
source=($pkgname::git+https://github.com/pkgw/elfx86exts)
sha512sums=('SKIP')

pkgver(){
  cd "$pkgname"
  git describe --tags | sed 's/-\([0-9]*\)-/.r\1./'
}

build() {
  cd "$pkgname"
  cargo build --release --locked
}

check() {
  cd "$pkgname"
  cargo test --release --locked
}

package() {
  cd "$pkgname"
  install -Dm755 target/release/elfx86exts "$pkgdir"/usr/bin/elfx86exts
  install -Dm644 LICENSE "$pkgdir"/usr/share/licenses/$pkgname/LICENSE
}

# vim:set ts=2 sw=2 et:
