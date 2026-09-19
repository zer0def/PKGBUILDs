pkgname=libnvidia-nscq
pkgver=510.84
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
  '3cf254db2d158c134b7ada94a3852e8f4a582fa8b85ebbac76b0d9aad49008df'
)
sha512sums_x86_64=(
  'c932e770d9e0469c4be487cbe9d81a3d4a4dfd1402ecc923de9e4ca973d4002254f21454adb33b2b86c7c17b098df731bba78cf9ba2d86c2a6cbe3bbd9eedceb'
)
b2sums_x86_64=(
  '7191214ab700d2686423a7a6ca152adf4a4ac3e5fd3aefe677ce64e69658f504b78fe6ccefbe3f5d2ab5fc4a4b4dea211377a5546ee9fb712780140481c38b90'
)
b3sums_x86_64=(
  '1f352c646ac92a3b179ef92963a53652557126666504d0451bb48b574a3e2940'
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
