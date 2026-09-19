pkgname=libnvidia-nscq
pkgver=470.199.02
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
  '8fbaef5400ae4136ebeb7dd2ec7932ba7aeb72309976e69e77a58bc5d3754f71'
)
sha512sums_x86_64=(
  'd96f907507ab6ad640c9d75a5a7d949b191a79e7a7728d53d7d13f047090e2758d27f392aa6c5f6f2accbd443292d6e009ee77d69df229da42d097b9824f7d55'
)
b2sums_x86_64=(
  'c008215137d15a681a60903548e26818f5d36171a3280bd330cca4e8f587eb344de5c7ab4a87796b14c32225f0f802e7c03c8bb6508b5d2101d3477c02344d13'
)
b3sums_x86_64=(
  '732d969e216ed4d46f6b592a2adc689a2234c33a00ff428a8841e0a05f1ae81b'
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
