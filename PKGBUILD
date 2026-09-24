pkgname=datacenter-gpu-manager
pkgver=2.1.4
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('4fe2895b1c9d06e528f9372ba27a3edf5928fcb22244e69d4a10726f9a20006c')
sha512sums_x86_64=('515dc913fa30040cf9390996c8a883e120150ad9e6a67de9eaa54428f917dedaee368e4621a06d9400a5109b7a785dc6abe589f490a19b5661776aec32ee5c39')
b2sums_x86_64=('8894e16a239eb2a40ca2593ed0584342d3325881ff9a4414e2c2d9507877b942ce95748b3c20cf7ccc4207dbef461d7bdeb5435f7fd4f7d2f9dabf0f7ddde753')
b3sums_x86_64=('0f7fbd5f608f9f93e5981ff28861d1ecc717723d8ae25c13b2e51bb75885ea0b')
sha256sums_aarch64=('4b9abceab80f5e49d20ba47bb65c080375bca3fa75cbf0f5adf6df6f4515afba')
sha512sums_aarch64=('0ece31c120b1dbfd71bb400ee598c858aac06f93f05c0ade07ea46848cfb5495fb0ca2e91732a644dff4d25c6483063f27ab4c9b212b8ee90a20fc0578e79a8c')
b2sums_aarch64=('dc1778b77332ee4d65304a8741a57ba652c27a44c8ffcfe353a63c6345789c5dbbde999009452a2cc977fb0bfd61e5cdfb49719de72df3e0d2eab41201464d5e')
b3sums_aarch64=('79761162d5b9781505a191be65a02ef5addcff347f0a48b8a09db3b71b931e17')

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
