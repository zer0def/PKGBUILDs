# Maintainer: zer0def <zer0def@github>
pkgname=rke2-bin
pkgver=v1.20.7~rke2r2
_pkgver="${pkgver/\~/+}"
pkgrel=1
pkgdesc="Rancher Kubernetes Engine 2"
url="https://github.com/rancher/rke2"
arch=('x86_64')
license=('Apache:2.0')
provides=('rke2')
conflicts=('rke2')
source=("https://github.com/rancher/rke2/releases/download/${_pkgver}/rke2.linux-amd64.tar.gz")
sha512sums=("f1288881480fa0aa1415e8e7eb91ef353762e4629c040768f5dc946ab4861f293ad9e27fb65d945ec96ef9c106d414fc2e9c562c2a435e89d172bad6772f570d")
b2sums=("cde1ecf85b9f17c93573369aab2bf9878eb4a5f99e4c9acd9a7020c7e52054f4d608f8d499702dab378606c0032271d14d2bbeae002c410410db19162b5a8057")

package() {
  sed -i 's#/usr/local#/usr#g' "${srcdir}/lib/systemd/system/rke2-"*".service"
  install -Dm755 "${srcdir}/bin/rke2" "${pkgdir}/usr/bin/rke2"
  install -Dm644 -t "${pkgdir}/usr/lib/systemd/system" "${srcdir}/lib/systemd/system/"*
  install -Dm644 "${srcdir}/share/rke2/LICENSE.txt" "${pkgdir}/usr/share/licenses/rke2/LICENSE"
  install -Dm644 -t "${pkgdir}/usr/share/rke2" "${srcdir}/share/rke2/rke2-cis-sysctl.conf"
}
