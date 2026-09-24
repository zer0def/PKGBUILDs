pkgname=datacenter-gpu-manager
pkgver=2.3.2
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('52a7d6ac32a1d2dc7e03ee148edde864822e227c14d8b9bffd17fb90650efc14')
sha512sums_x86_64=('4fb4dcc6a3422a2050e28ee0feebbc605aea4921a4a238e2f1c455f37c2e95d6147819562d89137305c6d5c0ad094fbdd4d9d6316bc359a2f30e46db167b1ed8')
b2sums_x86_64=('84d63336cf84d66fa6f87c70041345a273a739f858f3c44b8119e91b60af557192af855157f477f3cbb7d822cfc35336f03930390809ed04ffcd8a6d6fb7e916')
b3sums_x86_64=('a40bf2ebd68d013c5382811f0d4e28dfd36f2461e31990b8368a9b3842584b59')
sha256sums_aarch64=('55be858f3ad6d8ff023104689581135ed056e17b339c80e327bc050aad7589d1')
sha512sums_aarch64=('64d7dce29df2ad10f6a366d41161ec8624f423ce484e06c30fabcf0a927f38578b2a6c378e22b8b32685a71d80202bb148dd4e593771b0e9102e2b2a15080936')
b2sums_aarch64=('dbaff6ba848d4b0aa3f8f37e71ad5c977e809dac0cf75df4261e331b5585b95bf60c534888e96034b8f4a40b28cce941cce6e964fde3f34736399fd923d7559e')
b3sums_aarch64=('24410c9c1793cb14d55bfb4188126ae5a718c0dc1844bc723d5139c799d00d6e')

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
