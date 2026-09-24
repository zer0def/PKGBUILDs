pkgname=datacenter-gpu-manager
pkgver=2.1.8
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('252489c091859b030453274c1fcee2d1744a2d878374f53f5a652b4df4fa1edb')
sha512sums_x86_64=('b787a3e02128090d0ed56f8c64e65a0fd27c5f6f702802bfb8da9080bb8b6e9e26d0c90efcb2869c1b2a34ee780967c9cf4c705d940e8681e5db0a2300d92389')
b2sums_x86_64=('836b99f00ec4c84a1ab3aeaec20e0a7fa9db8c2889e2d777a9f626b8e0f629e8ea73ad60dd374a54d63e883e779268a93be1821747dd50769c62255a5dc9269e')
b3sums_x86_64=('fd6d67ae9f3a00c7fb4a87462653fd2e1c3a1879989028eedfca70eba48f1788')
sha256sums_aarch64=('cce7d4ffb97f84fddaa0e11a06f41ab7e60831ff482d1525e9cd86442936bd3e')
sha512sums_aarch64=('6293bfde53ca9577e350254f9972647379f5886cda5eefde563639ddae5944a6fc277b96ff23b5afc51b6ec793e5763075aee2b4c90f87fa34502e1523f2cdcf')
b2sums_aarch64=('58494b9f8c00d911a9deefb7293e08882ca8f9e07b8384b447a88ab31d7ff3be2ba589d7c355993f9c0e653750aa08fb38e543d809c32cf50c17d8a1c15d6b15')
b3sums_aarch64=('2f4ded3969c1e8f2f4c91576ee4af66402446ba28c1f2b6513f476f38a03ea85')

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
