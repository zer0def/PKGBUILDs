pkgname=datacenter-gpu-manager
pkgver=3.2.5
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('6fc5fe7a367cc41ca4985e64574e3f7ead2b20c6094bce7eace82c6722ddd417')
sha512sums_x86_64=('fcbde76534e555a8c7fe703042fb2e93c268c207c4e092ea8e00f889637e22c50beda842fdd34a7931b88d713a9169f1875d3a199f9ee39e951d95d87120c510')
b2sums_x86_64=('8c547ac751847b5da3afab9910e678aa98e6ffbacd4f3529fc2afabc5ffd140649777b7d277b9f92e3b2fe3e9abd791b9132b100e1fef3ab2d4c0c20517f4b37')
b3sums_x86_64=('9b333d3eb4a9ba8305c93d76406660fe05aa8e190e68f113d9583d81a399b3d5')
sha256sums_aarch64=('d43f76edbbdea88be7474b63ed7a0f0ba2484369905cac7549aa888e1908667c')
sha512sums_aarch64=('9e5372650740e50938c33f0718806716e7329c8302a6fb1c41ec48c65c2b1dcf0ee4586f68dc1a86fe3a6c086b9edf971415fc98ebdf579385b3624d5f454863')
b2sums_aarch64=('88b9e4b7ead0fe246cb04dc704b7799885435739061c4d1155c921078ae7fce5b47e0a2d9d6f90bbafa90764926423881a22b3f6ade4c9514b5a35850c7822bd')
b3sums_aarch64=('055575c69b016e2a5df854e46737031e52041070eb77ff296df1f3ea7997333a')

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
