pkgname=datacenter-gpu-manager
pkgver=2.3.6
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('54ed196fdb5f3e23afe422f054e86f49d3099a59f20bcff496ed1979929f4381')
sha512sums_x86_64=('a1c8ce474e83d93d6219a2864670c4b17f2bcd738b72bff8e22e228a95bcca7aa0b781025182722b8866e3f0f7ecd78c00045f76e5f8b388f3c2afc6e37ef815')
b2sums_x86_64=('6f825060dcd2043da284945a422dbffb60dc9ff0d566f98bd331005ff1b7895486a2a9aad32e21a8120403c8248d5bc9ebf8cc69dede0b9fe558dcd744fc1a9c')
b3sums_x86_64=('65f0e71fcf91b49a69cab103c6ca155ffb9b62f09dd4a9d9cc19fb2c13a0f5f4')
sha256sums_aarch64=('e07535d52059bf8832431181876a75ce0d5c1a68011bfd6db985389bd288b52d')
sha512sums_aarch64=('cb936cdf0e95a36a8908f3772a9d1bc245b0b942927356ff82f1167b4a5848e160fdc38f5a351236dfd2039a0f37b7835fa77dab2fe98a40d4a2d4066c0d3da8')
b2sums_aarch64=('a03bdbd3417ab0c7ca519f67f4f4cc6ccac323f8ca4d73c5def4dd417ec59cd70dd9b4778bc1fdbe4eaebf11ad46aea7ef9b3e956f67c896ece944746951d12d')
b3sums_aarch64=('cf2c6c5146fa9de35706b1a49b2a7f08d13ff904095ba71a7dbe5a868ed3d958')

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
