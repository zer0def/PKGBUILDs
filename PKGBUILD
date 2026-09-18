pkgname=nvlsm
pkgver=2025.10.11
pkgrel=1
arch=('x86_64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('4952d7a467e1e211e6154fb8c9bd9f69cc6ad6c62907dd96f396ea2038b858d5')
sha512sums_x86_64=('8e8b2f7dbd8c3a41602db547411f6a97d62ea01e1eeb0cace43fa7c192c313d674ec989e2bb0f6ca285f00a6827c64e2f9e8bf1faf1d0be6ca8e5983d4bd0788')
b2sums_x86_64=('e172ff32db9c5e043a0a71df34f789d74786383de7bdd71e53aee44d60fafc46c7c03d23bd8949fce24e4022579e49bf3bc73d8c598f3d90b32275b0402b0811')
b3sums_x86_64=('b67e832e2907196bc8ab1185bd36bbeadf22ac02edd2eec36c5e1cec02769a03')
sha256sums_aarch64=('464a9a982da05188628c67198530a12026ca4be4621b77bfc69f6cc0fc028a40')
sha512sums_aarch64=('52992d1eb48961879c8386f0eace1757b63ebec5c1f033a8524794c06871d92270cd696385a4b42ff58103761a5c0c1e76eba16a502a2c22bc87908518acf989')
b2sums_aarch64=('db25ecac87ea1fad214db312f447143841133dd06f2d86d70a5f7c05be83f8c9b0d729384ae855cfc2c6950a5ae8e2d6e3c85a8f111b6a813164474006d4462a')
b3sums_aarch64=('1fad6407be58c72974a60cfa80a8c1c35f75e62c59fc93daf9452f5e6050d90d')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}
