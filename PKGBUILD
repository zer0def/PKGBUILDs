pkgname=datacenter-gpu-manager
pkgver=3.2.3
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('13173faa5549edadb63af632a65cedd9af1fc60da022bf16aea47d836323d0ac')
sha512sums_x86_64=('0c434d65a901388dc5832c798584f3b8846fd581b7a9f7916dd04f98568bc0e29bf0ef8b55628feee1bff0937c51312194ec6c560d840399f59a9c9779854f0a')
b2sums_x86_64=('0bde33eb2d5c103ec1873a7d6fc2b778d1d8f96a64ae086bc190f94d77d3e187c1a6809438a627f5dd14d171af722ad32f37a931f2c5497d5cac18b4fbad90ce')
b3sums_x86_64=('3bcf7e5ce70bae3ff32a03bfbe4d3b5652e0bbe5515808c1fc316770baa4aa94')
sha256sums_aarch64=('4328fd8d5de96e59e303ccd0b18b8ea64cdf7625cf9517aa1e6a7d5cf969c73b')
sha512sums_aarch64=('386b12ec6146570088c36c6393d7b30d99e87c554b4447c75dfde794242a65ddd19344eaba134b670cc6b37d01fdb40c705d6b16fe5b179ef74bca25cffecf2f')
b2sums_aarch64=('a8c277c54508d5721c7d02d039724008eae77392c0f230620ae1484c5b3f1eaa176ab674a84ce3a24600615a72d4c762a2c261b3f3b157fd93f464ad0f7d866c')
b3sums_aarch64=('6f6ef1ffe66dc2e111dd5132457dfef2b5c48d95a1ec763c0ca6979d86b02edb')

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
