pkgname=nvlsm
pkgver=2025.12.211
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
depends=('rdma-core')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-x86_64/nvlsm-linux-x86_64-${pkgver}-archive.tar.xz")
source_aarch64=("https://developer.download.nvidia.com/compute/nvidia-driver/redist/nvlsm/linux-sbsa/nvlsm-linux-sbsa-${pkgver}-archive.tar.xz")
sha256sums_x86_64=('51c05d8955de659b6c5e6133c14bcf6d2a245da7138feceb2348009f8a65a785')
sha512sums_x86_64=('afd969b0a75bbc854a55c1d1543687c7918e9c3edbb8d4957318c699988c8356f17bbc74e221cf7d4b5d8da6f0dd2f3c9399037ee620962512039dc99aa8080b')
b2sums_x86_64=('361d9391379558b883a229fee6e06fb29a1d52925ddbda58e242dff71d59badc9ff503539c4079464e15b0c16a175e2c3c9b1d3e926c5ef1ef60b39ca3c5e5a7')
b3sums_x86_64=('3e6cc254b0e6d45ff38f4c7abbbbb46206c47a76f04f8366c52f8c9b4ba210af')
sha256sums_aarch64=('18d3dad05a0be2411db7c064cbed5c61548428b7670e88f1eb324b879ebc44a7')
sha512sums_aarch64=('8a43514755b010a97941a775294f39e9d3c8d125c512d03f8769d62e8e7b2f19044dc776068e13e4199d73c41dbd3224d602e52ac58c20f72f98f861c034fa69')
b2sums_aarch64=('a47e4ef1c7c4ff85c819095db9a40ee9eaeeddef7804b59085d6fed36bbfb7a30266e55218e8dd0f6e3ca65737c30381518b56e3f80e09632563841dc9bf9f95')
b3sums_aarch64=('bd4b87f6060c34c90648f903df9b14105b4dd8c81f1b438735bc2d51053f96aa')

package(){
  mkdir -p "${pkgdir}/usr/share/licenses/nvlsm"
  _srcdir="${srcdir}/nvlsm-linux-${_archdir}-${pkgver}-archive"
  mv "${_srcdir}/lib" "${_srcdir}/sbin" "${pkgdir}/usr"
  mv "${_srcdir}/share/nvidia/nvlsm" "${pkgdir}/usr/share"
  mv "${_srcdir}/LICENSE" "${_srcdir}/third-party-notices.txt" "${pkgdir}/usr/share/licenses/nvlsm"
}
