# Mali driver for mainline linux on Midgard platforms
# Maintainer: Ruben Van Boxem <vanboxem.ruben@gmail.com>

buildarch=8

pkgname=mali-midgard-dkms
pkgver=r28p0
pkgrel=1
pkgdesc="Mali Midgard Kernel Module for mainline linux"
arch=('aarch64' 'armv7h')
url="https://github.com/LibreELEC/mali-midgard"
license=('GPLv2')
install="${pkgname}.install"
depends=('linux' 'linux-headers' 'dkms')
makedepends=('git')
provides=('dkms-mali')
conflicts=('dkms-mali')
options=(!strip)
_gitname=mali-midgard
source=("git+https://github.com/LibreELEC/${_gitname}.git"
        "0001-add-mm_trace_rss_stat-stub.patch"
        "0002-maple-tree-mm-rework-wip.patch"  # requires full maple-tree memory management refactor: https://lore.kernel.org/linux-mm/20220822150128.1562046-44-Liam.Howlett@oracle.com/T/ # https://lwn.net/Articles/901714/
        "dkms.conf")
md5sums=('SKIP' 'SKIP' 'SKIP' 'SKIP')

prepare() {
  cd "${srcdir}/${_gitname}"
  patch -p1 -i ../0001-add-mm_trace_rss_stat-stub.patch
  find . -name Kbuild -exec sed -i 's/mali_kbase.o/mali_midgard.o/g; s/mali_kbase-/mali_midgard-/g' {} \;
}

package() {
  cp dkms.conf "${srcdir}/${_gitname}/driver/product/kernel/drivers/gpu/arm/midgard"
  cd "${srcdir}/${_gitname}/driver//product/kernel/drivers/gpu/arm/midgard"
  mkdir -p "${pkgdir}/usr/src/mali-midgard-${pkgver}"
  cp -r . "${pkgdir}/usr/src/mali-midgard-${pkgver}"
}
