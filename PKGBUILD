pkgname=nvlsm
pkgver=2025.03.1
pkgrel=1
arch=('x86_64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('b034dad10a3154359e244b85206cd73f0fbce8e1cdf76058417b7b562c337388')
sha512sums_x86_64=('bd9a4cf7759d8fed7eb7a544063aa0c492db9145b491330f92a8a8a9247cdd7828e6e278f489029110fc98c05be25dcb3fc39d49add830858bfb81376d80f077')
b2sums_x86_64=('5efc0128948af5573da5490d4c32bb6a0eca2f3d2e6b57b9768f97049ca32f05116df0727b4b44a6a7f62b37c532218881195ba074fdca39c7f5b288e2e7d373')
b3sums_x86_64=('209e33026730cf2c71c200953106c568f4a3a63455d207a127b4d9b1a3b75be0')
sha256sums_aarch64=('e260285ec01c6beb562a14625e9564b96374bb824ec62cc9866066a48710fa54')
sha512sums_aarch64=('63584405c5de879a91dbb4a14c01fac2661cea646bc0d67d535e11aee62187f48c10bb3e7ed159daffb19b444bf42138ee30a123e926de4982624883efb02907')
b2sums_aarch64=('97082daa653602a617b326b00f8727df77770c6c2ced391a3d9b514134e9e5a8424b6cc3518ebbe02ee9ec4d666bb83de89fbda9054158cbe0f017c8f87c3d25')
b3sums_aarch64=('1d76ea652d45d7cd1279cfdc5800c588211ce823e4b5a38295e45faab5824da5')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}
