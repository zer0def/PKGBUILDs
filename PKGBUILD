# Maintainer: Sébastien Luttringer

pkgname=ipset
pkgver=7.23
pkgrel=1
pkgdesc='Administration tool for IP sets'
arch=('x86_64')
url='https://netfilter.org/projects/ipset/'
license=('GPL-2.0-only')
makedepends=('git')
depends=('glibc' 'libmnl')
backup=("etc/${pkgname}.conf")
source=("git://git.netfilter.org/ipset.git#tag=v${pkgver}"
        "${pkgname}.service"
        "ipset-count.patch")
sha256sums=('c550b2c4b88033b1329607dbd5a5775aad5ddb2e6d7feb37c81fe39544941980'
            '5a0e326a80fd5ab2d9545faa1189b647cc866c9568ab6a9dd0833ba5863f39ce'
            '318850b783a0fc9415a724ea3a865954067553ef7eafb447a4f2958794ecbaf6')

prepare() {
  cd "${pkgname}"
  patch -Np1 -i "${srcdir}/ipset-count.patch"
  ./autogen.sh
}

build() {
  cd "${pkgname}"

  ./configure \
    --prefix=/usr \
    --sbindir=/usr/bin \
    --with-kmod=no
  make
}

package() {
  pushd "${pkgname}"
  make DESTDIR="${pkgdir}" install
  # install doc
  install -dm 0755 "${pkgdir}/usr/share/doc/${pkgname}"
  install -m 0644 README UPGRADE ChangeLog "${pkgdir}/usr/share/doc/${pkgname}"
  # install pkgconfig file
  install -Dm644 lib/libipset.pc "${pkgdir}/usr/lib/pkgconfig/libipset.pc"
  popd
  # systemd
  install -Dm 0644 "${pkgname}.service" \
    "${pkgdir}/usr/lib/systemd/system/${pkgname}.service"
  # default config file
  install -Dm 0644 /dev/null "${pkgdir}/etc/${pkgname}.conf"
  # bash completion
  install -Dm 0644 ipset/utils/ipset_bash_completion/ipset \
    "${pkgdir}/usr/share/bash-completion/completions/ipset"
}

# vim:set ts=2 sw=2 et:
