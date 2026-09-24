pkgname=datacenter-gpu-manager
pkgver=2.2.8
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('9e1074c9c0f5eabf1c1469c1768b32447937c5b78fdb45e90d00916ec03e0b5d')
sha512sums_x86_64=('ce6a53d50df46af166353257bc95067a879adb586d37af6f820aad2e37cffc85572dcb560fd1467ca0a8b222c78229bb2d9ea6332aac27a9b6ecd276fccc9253')
b2sums_x86_64=('1b3bc3309d51827efcba18270bf8285fc039bad24d82d7dac467aea7d279ab6e5057dea56dbd9dcb9a56f717249d4833e0c7c5d2f21743e6a6f74e4cc8a0f08c')
b3sums_x86_64=('028189606b26cff48a98828b8ccfc013467687e4075a5fe4b37ff91fe1821544')
sha256sums_aarch64=('11bd524001a1ab985507e812117e3a58b40be7f1b2b36bde92bf9fd82a1054f5')
sha512sums_aarch64=('0e7fd6589703df5b5c5c7263a05c257cada180301e62bbd5f577b7f2c5f3e4bbf019edcef06292101fea3a272700d14a07118340cebbd73ad1e4139ce43f2fba')
b2sums_aarch64=('97d1332e26da77f9ed6899e49010b7855507b5f5e45ae2693e691fcf15a6014cce51b6794245c8f48be4e267e5ed60518a8003c81ec432d6db8d02871fac7834')
b3sums_aarch64=('9b2b860b08e44b1077fafa919563b1654298822601785ffd426a9b315840f4af')

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
