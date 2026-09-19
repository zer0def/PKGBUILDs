pkgname=libnvidia-nscq
pkgver=515.43.04.1
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
  'a333cee6458893f94c217facc23a74d2adf1c998a84a49018c6fc2b04ca72805'
)
sha512sums_aarch64=(
  'df0bda5dfbf4d2266532201e46c430c7f88cfab8a784a2788f8b9b1edcc47ab5d6d1368a3f6fc5c49a52d192272e234f2ccf663698752be39003666f0923f659'
)
b2sums_aarch64=(
  '4fd361c2679d417eb2cc43ebc4ec8e6053c1bf2c1ac577e3701eb7bf7b1fa13e5a5b6571fd5e2353c907d041a1e47e909e2a1f3981bc1781463407d1fa0d3955'
)
b3sums_aarch64=(
  '3810674ecca018d2ae12a7ae2214aa3043e182180429f181995df1e34fa1c4ed'
)
fi
sha256sums_x86_64=(
  'a333cee6458893f94c217facc23a74d2adf1c998a84a49018c6fc2b04ca72805'
)
sha512sums_x86_64=(
  'df0bda5dfbf4d2266532201e46c430c7f88cfab8a784a2788f8b9b1edcc47ab5d6d1368a3f6fc5c49a52d192272e234f2ccf663698752be39003666f0923f659'
)
b2sums_x86_64=(
  '4fd361c2679d417eb2cc43ebc4ec8e6053c1bf2c1ac577e3701eb7bf7b1fa13e5a5b6571fd5e2353c907d041a1e47e909e2a1f3981bc1781463407d1fa0d3955'
)
b3sums_x86_64=(
  '3810674ecca018d2ae12a7ae2214aa3043e182180429f181995df1e34fa1c4ed'
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
