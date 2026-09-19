pkgname=libnvidia-nscq
pkgver=580.159.04
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
  'd35b29bb3f496396b48bb0a1b6cfbee0639bffae1bec20fa716617941e198564'
)
sha512sums_aarch64=(
  '4267c19a9c031531406dde6474014dd3642e2b54e0989f291fc0e5db516ef760080a8e7d2d26f712e88f54c51059f1650682edd268066c8a0288d522f4fd9cfd'
)
b2sums_aarch64=(
  '97215d690407f8bb7c41e6251feda6c9ca412f2d792f5a30b5daaf8c093bfeb95ee60736f0407242b4c9ace0229ef87b0f2d71620297aac856edf1d69a713ad5'
)
b3sums_aarch64=(
  '80a75cc814241809649279d7c42233e1b12bcd335b14400d6bcb036a23496269'
)
fi
sha256sums_x86_64=(
  '6d7d578f2eecc5c271e3fa6ac7bb4a0884cf5ffc7d830d5ff2ed95afabd17fbb'
)
sha512sums_x86_64=(
  '70be45f393bf09c065664c6183c4c3f7c84433c488abed1c60910a51664f7973e012706b8e67ec9d4c19ba68d689d0ddd94f12f6896061d1b6acc70ed4861241'
)
b2sums_x86_64=(
  '99489f3216651f980bec43d71cd1db73ebaf1ef1f1a7f11b5fcdb9aa17981cf33e026174ef3c76fd706abf7502ce52ef273a634f33894e17ab458524e4befc46'
)
b3sums_x86_64=(
  '4ef43df394ccc72e99d2133d6d4846f14e0c1ea7ba71629edb91917274d4e474'
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
