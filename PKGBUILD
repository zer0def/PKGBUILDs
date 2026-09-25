pkgname=datacenter-gpu-manager-exporter
pkgver=4.7.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
depends=('datacenter-gpu-manager-4-core>=4')  # probably capped to major 5
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-exporter-${pkgver}-1.${CARCH}.rpm")
sha256sums_x86_64=('8a64df857525c01868802c8c3580075ba323374e951dc5d60b85c88c3ab0e5c6')
sha512sums_x86_64=('0c9fdcbee4bceac0a647df801608296175d3800ed75d0b3fcff71d89a249887f4e234ff8493938abb3158e4132f271340a432d5bf9393ebd82ee8c1a08762e81')
b2sums_x86_64=('0760a94ba19d7de311459e2710d6c1c49827f66464eed98e47bffccd24027b6d4d6c556ab53bce06275a2a6c8cb7ed0e6ed0feb8dc0c1c224e4dcc6167448b58')
b3sums_x86_64=('310639d79c77933f37fb9c488fbf94475fe31d54ecec36aebfbc933f16c40b45')
sha256sums_aarch64=('ab006ee9e20289efa2794a8ee610131924f8645a56bc3de0f5ad0e007f75084a')
sha512sums_aarch64=('c0acafa5a2467a83c171cf41e115b37b3e96d91c062b5f19aa0ba3f197c26510b906173e3ec154fa9318bf016e9a0072e652d2dff928b21f9a9acfba0a74a43e')
b2sums_aarch64=('90f90825bc5a7ec7c9439a102588b6157b1b6f53b59dd4d1c29c296baaf45f1c33d4ee341cb772670eb6be861cac6a5c8a3e6e87ddd7d299074872f614ab1497')
b3sums_aarch64=('3cdfcae086cce1591c941e67be47a1b2d519f48f1c8706a6f9da05945eb46437')

package(){
  rm "${srcdir}/"*.rpm
  mv "${srcdir}/"* "${pkgdir}/"
}
