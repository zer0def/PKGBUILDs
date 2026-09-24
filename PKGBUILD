pkgname=datacenter-gpu-manager
pkgver=3.1.7
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('58cff092f9a98951168a5f5c010bb090dcfa2866a3b419f880895137411bc7d1')
sha512sums_x86_64=('49935b5cf9720c8c5d4f0e1beedb880cb77fc6b5ca085026c23a1e5c6773dd3a84d28a1519520c7870f4881d3655a2d52af178b540bc37dfa30f65e0455d1a8e')
b2sums_x86_64=('fc086d53273d51cd9751dd2b9f0a3322e2fa09b5672a6025de73cf0f0c8470cb4ab1c111a82b79711636891a35d1bb1ef4ab3ab7a37a063c06584ac591de9ef3')
b3sums_x86_64=('4bb8aba9c89ff66ffb0bc290ce12b765032d3d916b87822ca881aec72ff0a2ce')
sha256sums_aarch64=('a1f2d8dc93df69f9c5bb3070ba0c906eb0a5021e7bf762dfd51d9b7883f230d9')
sha512sums_aarch64=('4e3f0395739e7c9e624726eed40bffb360b19afe6842e123c4af2239d177aff630c196b75f64931f261a0cf3258056688b20e3bb36a3e9ab0c1ca4d7375613d1')
b2sums_aarch64=('5c0525de616e4991ede19b59ef3118bfe4054ac6ddded289d7ae17334e88de9e18815d6c1d1438e7c7d020408b60592eea490d62051810e539e58b84bf9c79da')
b3sums_aarch64=('ad51e3c9efdfb1ee5b7b7e22c41ed1a9dd1b1299b3fc490f9e2b9de833c18b24')

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
