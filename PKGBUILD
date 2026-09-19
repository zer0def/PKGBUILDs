pkgname=libnvidia-nscq
pkgver=535.104.05
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
  '3f59ae0385b30677ef6cce248e805da6ef71fc151ec4779825716f42bff6274e'
)
sha512sums_aarch64=(
  '6ab1ffe6d7951a61ea6c6092d1f9dc4b80913626d5a79e5a299c62f9fbe99dbe57e283c46395ae16a7ec084c4e75205e68d269764aecf8ac424e11e72d990cf3'
)
b2sums_aarch64=(
  '410447db38e6fb8c93c72385edeaa8b933df471cf7cce8ae01caf3ae00023a05dc2cdddd508931d735c0e0eef4a86b56251c9f31b965fff132c5365d564c019c'
)
b3sums_aarch64=(
  '4e745707ecce73e6afa52b7b7dc676e75a950bb31c679f3d2627e62ba3c905f5'
)
fi
sha256sums_x86_64=(
  'ab3704b11cdf381d739fdae98e53aea6aec95538a32efc89cc90dbd3a8595091'
)
sha512sums_x86_64=(
  'fe3f4ce585f77e27bbff3667e51ae81ddece0088c9b0ad06d765cd87cd218cf51b0bb71b346e42cadafc51980f1563d32c78fabd5574b01947eeae5d91a79fb1'
)
b2sums_x86_64=(
  '307c9ea54250f2d99aad552498c9f214634db7759042264fb247e4709a3ae30c41f7ca21eea5385f4a07ddd1591f2389fcc02303c73972234da6f70a93bb7cac'
)
b3sums_x86_64=(
  '5924328f0c6cf5c651f116cf949b7a9f26f1dd3b97873234da00d7b17b50357b'
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
