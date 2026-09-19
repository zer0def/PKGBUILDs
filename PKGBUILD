pkgname=libnvidia-nscq
pkgver=515.65.07
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64)
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
  '5545e8419bd9f8a716d55a551302da0396f5bcaf4f1b9c8aef74ba22d2f2b627'
)
sha512sums_aarch64=(
  '28f5e702151487f17787d2214bedee7c5ab551d5787d3546d1c4d9b7571b16007f155bd247e694a5e778e3fb564bccba4ab5427fd341e1e7a4c41111cfff0aca'
)
b2sums_aarch64=(
  'f4a6a6fa8a9bed096b533feb303b45b57140cf2a42783ed879705abbf33df81f482e15b6096567e7ff6673b1376c28e3df4f25f1e966e5ecaa1014f75dc1364e'
)
b3sums_aarch64=(
  'd6abffdaf96039124bee106c748caf902de69686602e970be71df9f2700b11b6'
)
fi
sha256sums_x86_64=(
  '5545e8419bd9f8a716d55a551302da0396f5bcaf4f1b9c8aef74ba22d2f2b627'
)
sha512sums_x86_64=(
  '28f5e702151487f17787d2214bedee7c5ab551d5787d3546d1c4d9b7571b16007f155bd247e694a5e778e3fb564bccba4ab5427fd341e1e7a4c41111cfff0aca'
)
b2sums_x86_64=(
  'f4a6a6fa8a9bed096b533feb303b45b57140cf2a42783ed879705abbf33df81f482e15b6096567e7ff6673b1376c28e3df4f25f1e966e5ecaa1014f75dc1364e'
)
b3sums_x86_64=(
  'd6abffdaf96039124bee106c748caf902de69686602e970be71df9f2700b11b6'
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
