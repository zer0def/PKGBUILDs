pkgname=datacenter-gpu-manager
pkgver=2.1.7
pkgrel=1
arch=('x86_64' 'aarch64')
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip' '!emptydirs')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"
source_x86_64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
source_aarch64=("https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/datacenter-gpu-manager-${pkgver}-1-${CARCH}.rpm")
sha256sums_x86_64=('368f706b4d155f1753c644aec78db5dd997de30da376831327ca9745cfda8643')
sha512sums_x86_64=('84364540489342b21d2f95805c6c3f24222c14b5b5bf670b63daa90c6f963c0b3735323bd4180c5fb174db01e97316c6207ed2940b376b9dd0f74e4bcc047028')
b2sums_x86_64=('5f3eb39a297090d6a46beba825cb46d5014cf9eea51d83bdca8caa7065b1bfc42b691351c247c6688a774b7a25934749e3bcbadff237e66a940435660dc26f54')
b3sums_x86_64=('51babb9da5d16734970fa3e12b7174aad56acef8abe3d3afaa690d7fb8190bb0')
sha256sums_aarch64=('bdd70abd30bf008c9c74ebdbdfe3368190bdeaf588a53af3c826946a8d2f8940')
sha512sums_aarch64=('e4cd07acabd07c6748e04dcb1c74de05d8d1e15ffc2e32477dd91cbfc6164bec4d64acc03488d19a8a6b19992f53ea065efdf29437ed717d92797bd76078e572')
b2sums_aarch64=('c0804d25daea05b88e5d8ff3cb8ec81dd9253735582976e73ebeba639b512e69fcdb2271af9614f981a9f8633b4c8045b30f5d659abe093388987739433cb04b')
b3sums_aarch64=('7ae19c4606cc8814a4a650a13c662d127d07fece9fe286a54ecf14f3317244f4')

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
