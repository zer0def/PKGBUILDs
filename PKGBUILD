pkgname=libnvidia-nscq
pkgver=460.27.04.1
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
  '62250bfbe92f8738d6e505b59f70548ea5aad6d99c8f43d8501c8e10bfdea599'
)
sha512sums_aarch64=(
  'e582cb8f7fbc608d88334a7b33e6daaf2729f0f2ad31870b1a94bcd6cd57d93f77af811a3aa62414be07f5338d6aa1f7ae2e77c3b96944504404fa64c1232ba9'
)
b2sums_aarch64=(
  '99efce56966c33059265d72ccae5ae58c5eddf059b7bed7681113fc3da74bfae7a3e45eb76cfcdfa3e8e2db1ce57980628e25319b7d1734862ab511d8c1ef6db'
)
b3sums_aarch64=(
  'a31daff6372723ac3bf19617e450c39e2255fac7459c065a2fe9571b0966eca8'
)
fi
sha256sums_x86_64=(
  '2f73e357da12c1b6719a2aff46ef17dc5006f85a486b014b6f428d17394c628e'
)
sha512sums_x86_64=(
  '5d86d8c9c0839152c8a67807db0427a937896e419402e4f85dca801899d31f7da2631e5a5cb26555f06d3a2ffc1ece09c8e1d2b603b28ba8de11faeca79b8f88'
)
b2sums_x86_64=(
  'f28ee64d99c439813ffdb63e61008b7a7e61ece52e0436a75fe36cff55427b7bfa0d20f37353288cb2bc083df57643315e95584f55afcda66a8f4c448e1f81d4'
)
b3sums_x86_64=(
  '43f70eae764434545edc30b6384e57b3f86e21a54cfd7dcc3641a1b203cd0697'
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
