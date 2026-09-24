pkgname=datacenter-gpu-manager
pkgver=2.4.7
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('e12daf65e4a178d6866d0d17e2b58f14e465aced5a0b9055694b75f3d31efbe6')
sha512sums_x86_64=('0875141b9253ef989221043ce762896b49e37c9ad1e374e2fc5256937233c0354cf26ddc077f6575a9f20045990fec0076b3687f75da909c1828af9d0d278455')
b2sums_x86_64=('42a84ac525170c11280a4c58285a8a01647e759e3f2b88e93af505da36bcd5a836659d993728738f797d29374b2e51306a12518eeff5dcd6e563c128b5ebee89')
b3sums_x86_64=('5aae5d7c6bdac01aee81b31ec8648d2032b8ac0f830a68e3cbd5ead132c1f7c8')
sha256sums_aarch64=('5593afa54b62207350ecd3fa8d3d3d47cf109c09efb9024b7123d724ba4685f6')
sha512sums_aarch64=('ac382e1a2a860937d2b5d1ed6fb90c2a2375b8856d60a71f174a9d87a403c5cd8ad04f1542a65849b11078ea6b0b0ef9572f776c8be7caa27a77913935522d97')
b2sums_aarch64=('27e8361cf7738c202806463c82fbec819deb0bc74212ce145a10a88aab3e3224541549f807749a9b83fe2661f8ce3708f26bbe9331448652178cf59f91b53fc5')
b3sums_aarch64=('e4d48b36bf673fe39cca2e7bb1f6f44aea3dc2369f2af99915281c135847fb77')

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
