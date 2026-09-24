pkgname=datacenter-gpu-manager
pkgver=2.3.5
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('6c3e5fdf807d1b2e223dce2be8057e9b50883cfaf3ffe75bddb476d046240cdc')
sha512sums_x86_64=('734b7ec956b8728f8ab778056e8911e8595fcfbddcda0aea8587e3e45e975fdac07092ffbc0216741eb2fe48bd304b4fbbf147caa09d08cabd30a34c920f3a45')
b2sums_x86_64=('44d5d40151906c6ff698a3ba56759ae5484fc8a0f05b3cee6ff3e923a746e4fb123cb2eaffd49f46ae55c2435d8895bcd6da52cf4052f851c2d9f1987ef1a1c4')
b3sums_x86_64=('850f49ecd092eeb1b335e3bb227ba15a1e30691943326d2ef5e8d3eedccc1393')
sha256sums_aarch64=('73e2156b270b92709934bb43d9b22fad235a0cff41f59582eb66d0aecb1cce50')
sha512sums_aarch64=('bd620765be4da9eb4eb53243bcf7181e9a3bff2077000951fe373c3a0007eed642258722a51d8df74d6e0077c8f9cc9c05925ce8e317ba7f30454c4e0846253e')
b2sums_aarch64=('0fedcaa2207c44ec789dd641ce7a4873ff41fa431f0de8366f84e43d4c128e6600f87f8e7e351d0bdf9b944e4e401196c65e09d9f67a3f859f95f1c3971cc611')
b3sums_aarch64=('582890058623a6f4bfeb75e058c906da81ff352664c3c79835f731f5a8c8fd03')

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
