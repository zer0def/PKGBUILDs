pkgname=nvlsm
pkgver=2025.03.9
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('d498078849a36a8722f8b6c39b8bc54b9f658b4fe14b924d75b00428f7c1d766')
sha512sums_x86_64=('c6a59ad4216621b204b3edfb41667125ba59503b78488c2fd67281bfdcb09135c0d6f6f70fd4ddfb1a24efbbb276af982c937b751704342684f342a17cd358b4')
b2sums_x86_64=('28fae7c2b53e3d5813bbd8ee0aab6a628d19cab7af9a279ea37d4aaf92c232e6eb73ae6d6df63d44d1a089b052332cf69228dde57fe855349b26f7514eb2b19c')
b3sums_x86_64=('7e295f532c870c7f52a0e6d8bf9ab40d6c2362e6f03339e4663bd24d4e817c3f')
sha256sums_aarch64=('ac1e63cf856c63bd2e5e1700e5c3c21d5684ca7a7d32b6b2893e30c17cc43ad4')
sha512sums_aarch64=('5bd935206ab62f82aaa721a0d196bb6cd1fed71f58153ee0592705d2b86c9f38c97a0785b0bfbb138282a6d13893b62a93b0fec79dcab8637e9f83c4c5588c6c')
b2sums_aarch64=('8b0acea95c66c15b4b9af683662eb0e3d0135be93e1ee9906041f516db3ae2dd88cc4371dece45c5ed33ccf313b7c33987af9d6ae5eb080b4b83a012256631bd')
b3sums_aarch64=('ba819e0a8949834cd6a08646ff1ec1022b4584d4780d04983678201ef4a67f7d')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}
