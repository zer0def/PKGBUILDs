pkgname=datacenter-gpu-manager
pkgver=2.3.1
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('586bf03a7b0c9827c80dc0a82c6e8fe780ff1d76d82b103866906e4cdd191710')
sha512sums_x86_64=('29e366e165774be305dffab74b8adc5ec82174c9a5d98dc9bc814977ef15e4ee07c317ba94356855cf8af412eb29c76cf4800be8cf587d70339a0740a7614ab0')
b2sums_x86_64=('656ade0fa16c5dd085d825539df4937d6c7d90c8aba55bfc9215713e1d163d2648d4581d1e0df04aa4ad1c4c2865f8fdbc68c71b976b8650849810ec61181093')
b3sums_x86_64=('3809390618eafcca769aed101ba13ab6b9748ffcaacd8fb4e7616284f79e9eb1')
sha256sums_aarch64=('a1c8cabe45c381fe248908527789c5a5273c49182d6b9d8af54c0fd2a8670c7e')
sha512sums_aarch64=('2570f8e2731a42767e8f13a34247110b0e5f6d8c5910b655683c9f469f070d4f1a1d21580955de7ac234e92259d68adba17b416ba3f1d36cc1ec5ff6f22ce4c5')
b2sums_aarch64=('37b14ea928192ded8a13d3b9627a07450044a2ca7b0d1665b1b3025d5737ba0a601bcc4c71797193fc7848425d93ef0fbff8ed49fd3224d14c45f14a8694e9da')
b3sums_aarch64=('84201283dd1eff70b8c3f8c84033234cd319f6046de59bf3df036cb56d6e8ccf')

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
