pkgname=datacenter-gpu-manager
pkgver=2.2.3
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('c4d91445d33b8c5a7ca6117fa0ad3b2e688e4eaa70eb2e258e9ca1f744403141')
sha512sums_x86_64=('c6a07de39b4e39ed6ad4e995a603f5adca9f706be39bcfae3a1c92759e88479c0c2e037c941607f16d6deaa083e3c2de6570d2f386d08ce16a02588bfcfed959')
b2sums_x86_64=('44d5448e05f5872a2c7e8287831567011078fe06e2cb68a0498b30994f15fcd8ca4d7a70e17e74ff64c7c125f23ba03233c0d0e8640a2b353351c4d796edc455')
b3sums_x86_64=('81735fd8a15d6352669c834d4d6fc6677620bcaae4d3127f0a37ce610714848a')
sha256sums_aarch64=('2915f067dddfe128a134cc789c626872439a0a35648af4576020cd3cebe690e1')
sha512sums_aarch64=('56d9edaf63bc34243863e2b4bc64fc72f67391d5d626892bdf20b17c8a86f1172d2dbf39c88cbffb9ec52a4b23b78d6afd289f7c3c11eeb374725c20e1ba5fab')
b2sums_aarch64=('854feb50bf6ef24fe7c296f8ea0e67b638d3882858e4e9359f36a88c83581c4f36af739313720bd10e50565531ac69bba513c4829d9eaa5c4b8b83e51d0a2232')
b3sums_aarch64=('1c50af9dbf50bd2ced52b947b0726cad99910a218cf1e97c2ff8f0d7ec807562')

package(){
  mkdir -p "${srcdir}/usr/lib/datacenter-gpu-manager" "${srcdir}/usr/sbin" "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples" "${srcdir}/usr/src/datacenter-gpu-manager"
  rm "${srcdir}/"*.rpm

  mv "${srcdir}/usr/share/dcgm" "${srcdir}/usr/share/datacenter-gpu-manager" \
    || mkdir "${srcdir}/usr/share/datacenter-gpu-manager"
  mv "${srcdir}/usr/local/dcgm/bindings" "${srcdir}/usr/share/datacenter-gpu-manager" ||:
  mv "${srcdir}/usr/local/dcgm/scripts/"* "${srcdir}/usr/sbin" ||:
  mv "${srcdir}/usr/local/dcgm/sdk_samples" "${srcdir}/usr/src/datacenter-gpu-manager" ||:
  rm -rf "${srcdir}/usr/local"

  mv "${srcdir}/usr/etc/"*/* "${srcdir}/usr/share/doc/datacenter-gpu-manager/examples/"
  rm -rf "${srcdir}/usr/etc"

  mv "${srcdir}/usr/lib64/"* "${srcdir}/usr/lib"; rmdir "${srcdir}/usr/lib64"
  rm -rf "${srcdir}/etc"
  mv "${srcdir}/"* "${pkgdir}/"
}
