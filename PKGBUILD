pkgname=datacenter-gpu-manager
pkgver=3.3.7
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('e30ac85c77008208ce920b8d69f0a5be5e794810a14de7237e5945315e799dd4')
sha512sums_x86_64=('5240e0e76f17607e9c0bb2d8fd21b040a3d434da5b3ade21a10a8d3ac5525242718ba67ba2779797ff0df286591b46a787b02579070b01b550d7c05102e14677')
b2sums_x86_64=('11e823e476b226567583ae6d2bba9ab032213568bcf17b16d0b8257365de5378339b56de76828f4ee9addf185f0d713b4c0280c924c163b24240a59383a2276e')
b3sums_x86_64=('c03201d25ceac7b1d87c584165f812db85cba4664a57ac399c94f38343372ff1')
sha256sums_aarch64=('72f6d2e026af8171c098396e28601af00d32cc3f828586e6f57a1b82d0c1a76d')
sha512sums_aarch64=('0fdae81822a7c164bf8efc5ab119bb409bd83ba67d92da817179691dd8cd880c5a86753e875d457423bf880c634107282548ba60e36b6acbd4220dffda8deabf')
b2sums_aarch64=('3e917df2b7d1c5fe351216248734fb61643bffea06383f14ee0c38654bab1f2a0bc17641fcd078ef81747248ef59f5ef6e73dfaaf06073f3621b312894ba6b65')
b3sums_aarch64=('6c8fbe48a112673597f78700837de891868d1c15cf2e1a613796b1c58c974a98')

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
