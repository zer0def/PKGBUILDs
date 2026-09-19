pkgname=libnvidia-nscq
pkgver=575.57.08
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
  '931004b8b2062249016a9bded2499f70331d27b265226ed879428b8bd7e4bb20'
)
sha512sums_aarch64=(
  'b9508a78ac49da2ea60af0c9ca51b9bac7a9822af7c1246f2a8e17c038fff4183558fcc784f9c11d1a7f5c11554298bb52f56f960f2cfaaac15477a88959a166'
)
b2sums_aarch64=(
  'a586b617b3bf172960cef80fdefec4dbc13a263ac8e52ed474a2bfc1d8762d846821297f859fe14f4591b2b18de71ea2da5cf96342a3528f963bdea8a333564d'
)
b3sums_aarch64=(
  'b2463caffab69aae7564dcc9ff3785e86710983adbfb695c1a98fca5527b577c'
)
fi
sha256sums_x86_64=(
  '7c54e959ee50212be8595e01ee76581c1f3a13c19b2279424b55a8d26385c41a'
)
sha512sums_x86_64=(
  'f006cf4ea17ee694a56fcb553aebc0980ec77ffd2a0c89d103c8d3b38e6f97e99ab8b860f17613a32a2603c9004d750be859b5a7edccc6da69ee9a3db11a56ad'
)
b2sums_x86_64=(
  '81e2b2ba18520d62226fa3798e824e9d5718beee799a5f1c0792ba60e9440f83c0c1e8c55cfb019ab7f2bf2c7d320d69f44c35b22667704777484a9a65a6c409'
)
b3sums_x86_64=(
  '236eb4479fe52f6492d994a922a25438af56ea368f4c6100624bdbf1c37510cd'
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
