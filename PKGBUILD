pkgname=datacenter-gpu-manager
pkgver=3.3.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('360fffd9b8f637cec980dd2647a878a2fd69ff73bb3613560c4f11cdb1f25511')
sha512sums_x86_64=('448bf1813ff90a7a78e93ebb1de064b9ce175239153a017aa87d81505e9a178f19b7d2d577fed3f78c963ea5a3feaf5475504684597fb97539e4e4fc0bb0a047')
b2sums_x86_64=('adbb115498da00b3423971ce05aba9bf5b3e5ea569e00ad3f44c0997080ba77e374a61449ae16de18ecbe20cdce2c1a0d06fbce44cc0272c5976d6167e497618')
b3sums_x86_64=('45107055480dd87f67a2eca6a584ebb5bd9a674695d37bc1c62ea18771f1c6a2')
sha256sums_aarch64=('9a55f806dbe65eea163942e794d2e2000dec0171d475bc679165f3ceccba61b4')
sha512sums_aarch64=('b4da5d978dbcef025d6fdcd9bda18e4e148396b7d67aca382d41ee01fdf2bad7100efcfc5e745d31e4375b77d233647f82e77ae8248512e0c5da5a91e0f5c8fa')
b2sums_aarch64=('001819ec8d98ef1c6585fa040db3a25027802546abc10a2cec42113783d8924a87ce47df15714afd944e4783a2632540badce696c5b6885f34290c39bde8a2a8')
b3sums_aarch64=('431bae75a5529da3d304f73bffb70de2ef72168f03e214c592dd756bea02438a')

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
