pkgname=datacenter-gpu-manager
pkgver=3.3.3
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('30a0edb33fa30b0e477c48567f236bb701fa22d63f537730fd81262b52a557d4')
sha512sums_x86_64=('cfbf87fba122c7af8577c6fe02e21c8c0f3cc7693f2d70ef673e85f41ffe98b2f978895d9dc5bf98d038d18935fe79250d8eb4cc6cca67a215e0822e973b0f0d')
b2sums_x86_64=('d5a8adc36850dbf96aea8a4f3d1158aee77b402c7686712840c9b33baa6ac8fb4e1798813419328ace24950930002f3b3c2d7e20c901f43b6da339db0b002fca')
b3sums_x86_64=('1e5e207f742cf5b7b8a0a4271e8b4f07887095d74b60d96e9604e8d6805fc036')
sha256sums_aarch64=('df29929420cb0984ecf3cd254752eb6adf99128cfe2faef0f2bead72f512709e')
sha512sums_aarch64=('35e92e0652000d1a540871e98bbf2c1ffdd659378c17e9eea1a6171551b2bc1d1b0e818aef717a859cbc363832b49a04d5a83ea94a7a9ece04cdfb13ffe285a7')
b2sums_aarch64=('eab0a0d6948bafdefb3f1504d6e5b5d72e604064f350add42d7b6f168bd62e237ef86dd16b39939d6917e7edf7ee1bee7125925a0235329f28adc66eddeee773')
b3sums_aarch64=('47495f715a786604ff2ea1f88d59bdfc184abb1fef9c2ddc5941b3e77693dfc8')

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
