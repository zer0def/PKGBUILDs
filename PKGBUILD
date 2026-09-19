pkgname=libnvidia-nscq
pkgver=470.141.10
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
  'd3973b179e18f59c395e3d920126bb3ce52cc0372d6c850f3cefba05b48fb124'
)
sha512sums_x86_64=(
  '11e72edb4cb7c36b3998ba7c24c912ddd1238212fca53b4eaaa668f2b1b9e4dbdba69707cf9cacd311005bb532e195fe15ea2a4077843694db6c1ed557358405'
)
b2sums_x86_64=(
  '97f84e6f7d3aed3f93efc374b330ed67045e50a33b7269613b6026b61e7a48b02570b4be8946253583907485b53483dfe5a22d41832d74ce5e3e3c2710562aa3'
)
b3sums_x86_64=(
  '38f6d735f6525b6c05127102683e6dad2d84236c9813060310badbdf759e345a'
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
