pkgname=libnvidia-nscq
pkgver=580.95.05
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
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
  '67cba21aad38e48247e88f480ed67a3096f7173abc190a3f3fbcb312f9649ac6'
)
sha512sums_aarch64=(
  '51a6dce7660dccf71ddb5a8eb7095e1fef57926d870435dceb63ca31751369f61222a125c19f916bbe91468cdb75459da56ef28a9495bc6d7d1e5a68d582ef82'
)
b2sums_aarch64=(
  'b082266bf0363ef8efdf1453c2f60e7741e59113fb8fb6eccea54c087f50ca6e5424255fa22d670216eae7376a18e772aea3a63879080766f28cf5e9e3d0037b'
)
b3sums_aarch64=(
  'af0493d2ae2560d408932f22e1d39f3da97d5db7a786af23b5476e38c7bfd397'
)
fi
sha256sums_x86_64=(
  'c2285c12f10ec2afc0ad2949f7fcc282b6fd37f32165c1df241451ccabb1067a'
)
sha512sums_x86_64=(
  'd626342fb926b72dcc25873cdf8e9d7549802586a3eff55de4998b5fb5ed2dae420178f9cd4fd5b3b57628a7529bf177b59d55ef526b5217340e9fb670832d37'
)
b2sums_x86_64=(
  '85c659bc99a43f310e808bccbede1fb23eea4c5d47d3da0a1d6ccc4e1d2bec102389946ccc089565fe928a2e00503b46b23d6107859ed095973218847c34c8dd'
)
b3sums_x86_64=(
  'e25c0a5b83849cfe0d3ba22a514847e624db32f48dbbb1aa69d5378683e2b076'
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
