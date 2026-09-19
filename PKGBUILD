pkgname=libnvidia-nscq
pkgver=555.42.02.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix='-'
_ver_suffix=''
if [ "${pkgver##*.}" = "1" ]; then
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/x86_64/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.x86_64.rpm"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/cuda/repos/rhel8/sbsa/libnvidia-nscq${_ver_prefix:+-${pkgver%%.*}}-${pkgver%.*}-${pkgver##*.}${_ver_suffix:+.el8}.aarch64.rpm"
  )
else
  source_x86_64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
  source_aarch64=(
    "https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive.tar.xz"
  )
fi
if [ "${_arm64}x" != "x" ]; then
sha256sums_aarch64=(
  '43e319194155b8b081f1919c2fcb585ff366356a29ed855d9e417055f1b3b019'
)
sha512sums_aarch64=(
  '7df7225e905edab22d5559015c80f04bc74ca52808a0c1d9283e736264ad5019df2ec69bb8c4a8d2faadf07aca93e1e2eaaaf204d74f90398427acb11f63aaa2'
)
b2sums_aarch64=(
  '8b0bc2a27657e92cc8d936ea5d22ac851f5052e513b98302c99acc880eafcecc820ba3588248cf61321e9530fce02389e843fb371f808135acefe0e5d6bd68a1'
)
b3sums_aarch64=(
  '5525ea9a09b5ddad36a7d2b35869a56915ec46038c83d7e2553bb84fec41a018'
)
fi
sha256sums_x86_64=(
  '505eb8e253812f70982495d26ebd6c7a7ede08d10ccf7425291cef94312c0a68'
)
sha512sums_x86_64=(
  '91274117589c7315c8eebeabc3d8e73befff7e0d2bfbc5965a6efc659f023a5c40cbe7f1017104605fb77b538d48f7f31c47361e815d3d70966316da19ecc604'
)
b2sums_x86_64=(
  '6e51a25289cf9f552583f3b200ca75da722d130a5d71c9218f3ec58fb5aa4ef7e29325ecfa19397bbcbd895a0b208b595df36778e23d68b1e00d70f67f7e28e0'
)
b3sums_x86_64=(
  'f6456d4587328afc21a3e30342dabad4bc388a6c820cee935954e49b9b5b417f'
)

package(){
  mkdir -p "${pkgdir}/usr"
  [ "${pkgver##*.}" = "1" ] && {
    mv "${srcdir}/usr/lib64" "${pkgdir}/usr/lib"
  } || {
    _srcdir="${srcdir}/libnvidia_nscq-linux-${_archdir}-${pkgver}-archive"
    mkdir -p "${pkgdir}/usr/share/licenses"
    mv "${_srcdir}/lib" "${pkgdir}/usr"
    mv "${_srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/libnvidia-nscq"
  }
}
