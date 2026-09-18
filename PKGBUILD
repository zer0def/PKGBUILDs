pkgname=nvlsm
pkgver=2025.06.11
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('251296a10538ebb6acee3e0f835f5a3bf0eea7521e8c130a593cd263691ef935')
sha512sums_x86_64=('8707cd0ea776a030e50f0736024755c1b7d55e660e900a4392e31b02faf73811cae3abc80c3e1632ecfcbd3ad76e4bc6f4f13334cebf419105b72a2badfe223f')
b2sums_x86_64=('275418bcc17ae2dbbd9f0de4924595f04987b5d1bce87b994f2f7701d0fc9002220e83b304a3f790fdafbfda8ee57b599103a528c4a1d449a15dab1d59eff757')
b3sums_x86_64=('3bb0ff268d789413cc56b82db592a45f7f03feb552a11f56547a00ee9a732c23')
sha256sums_aarch64=('0178f31beee1f7b144af147a3234505b03f1bb38cf9d8460bd6c65107f66b8f2')
sha512sums_aarch64=('240ea3c71f63e02ecf2af47501f52264f9c3b8de2874681923cd6223c0637a69a5a0047421d383bff05ae679e2fd207c6faa4aa4b7d867c5ed39324ff66b849f')
b2sums_aarch64=('7c9f815fe6492969d5ef283c2b3d436068da5f7e8e1109b12219cb1349d4c0ea2d126f31cfc95624f16dd65ee47afc1e0838a16675fb1ca83dcba5b422158253')
b3sums_aarch64=('87bf5f9645a25d53cf5ef5ac968e5b3f75f81e9c85eca624f646739cdb792482')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}
