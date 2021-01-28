# Maintainer: Anatoly Rugalev <anatoly.rugalev gmail com>

pkgname=kubernetes-helmfile-bin
pkgver=0.138.4
pkgrel=1
pkgdesc="Deploy Kubernetes Helm Charts"
url="https://github.com/roboll/helmfile"
license=('MIT')
arch=('x86_64' 'aarch64' 'i486' 'i686')
depends=('helm')

case "${CARCH}" in
  x86_64) _CARCH=amd64; sha512sums=('8a7a0ddc0b6ea14e63c8f8270542530d2dcd3f3e5d854787cf1238a14026825a6d12e210e016aefb1f661887b90418672a7ef34cc9900cfa359bb76fdddbbb10'); b2sums=('92b0f442fda4a0c0da670030c35fd2ec785a4b1786ede49a958660dd57bd803e1097fc8dd7b764ed30af8914fc780f9df35578b20dda72fe88aff65638f88b73');;
  i486) _CARCH=386; sha512sums=('32cd7bd2941a00eff33bd3071af6fd4075f21d00e558ef14b4796cd88b1f8304b4ff85446ca00d267b2c32b8c44c82dbf4b37be2cc2c3d87944a8fa55503f5e2'); b2sums=('9c219897eb776661527106daeb09269aef76214a32fb7d01b996150733e68ac18cf30047e15112e50ace97b67b187d1f88d19eacbb63f3fddec375ea5053d427');;
  i686) _CARCH=386; sha512sums=('32cd7bd2941a00eff33bd3071af6fd4075f21d00e558ef14b4796cd88b1f8304b4ff85446ca00d267b2c32b8c44c82dbf4b37be2cc2c3d87944a8fa55503f5e2'); b2sums=('9c219897eb776661527106daeb09269aef76214a32fb7d01b996150733e68ac18cf30047e15112e50ace97b67b187d1f88d19eacbb63f3fddec375ea5053d427');;
  aarch64) _CARCH=arm64; sha512sums=('8e81c3f0745ef41bc7cfc85b6a52001699a6389eec520c3225ef1ff507a03960d7a2c79347c191b34a374a200a3d2448efb86a1e6b76e418e58df2c0f3b56d2a'); b2sums=('cf22ea783767dfe9a2bcfdafa06af09965ade9bdd894c868f0ac8cfb9dc56069fc2c1556a0adda184030a05d65d6be82e153af988d414140655c83376598c1a4');;
esac

source=("helmfile_linux_${_CARCH}_${pkgver}::https://github.com/roboll/helmfile/releases/download/v${pkgver}/helmfile_linux_${_CARCH}")
package() {
  cd "${srcdir}"
  install -d "${pkgdir}/usr/bin"
  install -m755 helmfile_linux_${_CARCH}_${pkgver} "${pkgdir}/usr/bin/helmfile"
}

