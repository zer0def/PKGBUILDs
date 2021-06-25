# Maintainer: zer0def <zer0def@github>
pkgname=rke2-bin
pkgver=v1.21.2~rke2r1
_pkgver="${pkgver/\~/+}"
pkgrel=1
pkgdesc="Rancher Kubernetes Engine 2"
url="https://github.com/rancher/rke2"
arch=('x86_64')
license=('Apache:2.0')
provides=('rke2')
conflicts=('rke2')
source=("https://github.com/rancher/rke2/releases/download/${_pkgver}/rke2.linux-amd64.tar.gz")
sha512sums=("7999bccbe56845cccda8f87612c7d4b34d41f4f407911e64bcd5283622c6ce95f93dda8c3b7c0e250ed8883a9c4752c25e411336f8cb327218a9113b93667fed")
b2sums=("637a6471f7463fb134116728721a7d054fe9c85b3d73fc48e08f9bb4de44d7bf03b3bb8fe06f578c5df071a922b6b8b8e0846f08ed89f45d50cddd6ae1df2f70")

package() {
  sed -i 's#/usr/local#/usr#g' "${srcdir}/lib/systemd/system/rke2-"*".service"
  install -Dm755 "${srcdir}/bin/rke2" "${pkgdir}/usr/bin/rke2"
  install -Dm644 -t "${pkgdir}/usr/lib/systemd/system" "${srcdir}/lib/systemd/system/"*
  install -Dm644 "${srcdir}/share/rke2/LICENSE.txt" "${pkgdir}/usr/share/licenses/rke2/LICENSE"
  install -Dm644 -t "${pkgdir}/usr/share/rke2" "${srcdir}/share/rke2/rke2-cis-sysctl.conf"
}
