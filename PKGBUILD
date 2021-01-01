# Maintainer: Anatoly Rugalev <anatoly.rugalev gmail com>

pkgname=kubernetes-helmfile-bin
pkgver=0.137.0
pkgrel=1
pkgdesc="Deploy Kubernetes Helm Charts"
url="https://github.com/roboll/helmfile"
license=('MIT')
arch=('x86_64' 'aarch64' 'i486' 'i686')
depends=('helm')

case "${CARCH}" in
  x86_64) _CARCH=amd64; sha512sums=('708ffd3bcbeec9727a92755ba5df7bfc173bf445bbf23437eb42f4a0fdb40672c563e905fe786c1e2af063f90ca5a928bc88e05c8ba63747a6adb82bb564aef7'); b2sums=('3001178ea119423759cc440f142be82a55011d3dd1a792055772feaee1a842ce4c880874a392ec0401f3891ad69016cef11e74e00158df57c4fdc832919dffd0');;
  i486) _CARCH=386; sha512sums=('4467092f1878115de4c9954ed3d7c09f101db31ab78f06303d7b6024b29bdef860ef5f96d6bbdd805be657042ade56879af282d44301056540d9d04c0c29382c'); b2sums=('52b6da6463cbf4b583b68fcef80adf061319eb40952c2629eac21d82a00d489b8bb3ef1bef485d1e0b79fb5db9ffd7c6149f0080c488af210f3e7c1d3c252de2');;
  i686) _CARCH=386; sha512sums=('4467092f1878115de4c9954ed3d7c09f101db31ab78f06303d7b6024b29bdef860ef5f96d6bbdd805be657042ade56879af282d44301056540d9d04c0c29382c'); b2sums=('52b6da6463cbf4b583b68fcef80adf061319eb40952c2629eac21d82a00d489b8bb3ef1bef485d1e0b79fb5db9ffd7c6149f0080c488af210f3e7c1d3c252de2');;
  aarch64) _CARCH=arm64; sha512sums=('25e34d44d95c5424db21e1e8df8b7e4fab2683d7d8e3b97a752aedd570cdd07237fca31a1c3263be566c4aa85e4eb7b2c1bf7b6363069f636758566edca70682'); b2sums=('4c259637d02c727fe5b94f68938cc3638292156d1295b97739928da4071ac0e482e4ee7d4b12d12d9161e8d0a12c81f8c8699b2148c0b745f95f010e02353eb7');;
esac

source=("helmfile_linux_${_CARCH}_${pkgver}::https://github.com/roboll/helmfile/releases/download/v${pkgver}/helmfile_linux_${_CARCH}")
package() {
  cd "${srcdir}"
  install -d "${pkgdir}/usr/bin"
  install -m755 helmfile_linux_${_CARCH}_${pkgver} "${pkgdir}/usr/bin/helmfile"
}

