pkgname=libnvidia-nscq
pkgver=595.71.05
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
  'd589476472bfa20ec55cbfee5d34df70f6dbfc968b31b9b5795c6d8fa5cbcba9'
)
sha512sums_aarch64=(
  'eeb3758be7e2cdab2cb78215139cb75b269ebacee5965649ad52c4305cd65e809a8916cc4b223a0fbb37376053a19a83a7cd4888ca62446fc717797c511cd62e'
)
b2sums_aarch64=(
  '924d42b7a7dc783da6163addee8f46297ad60c6ac562e1a9e95e6d2b5013d6e2c49554e6bc74f1178b21a9a7d130dd37918c1113da0cccc80f57f5bb102f9b32'
)
b3sums_aarch64=(
  '135f5814336afec0f3b4abb06842ad83155e1e66497eca29d7d2dc4d1b920b15'
)
fi
sha256sums_x86_64=(
  '8312de8397d7a376d8200248002fab927ee348f523051f1d11335efd6a7e1f6c'
)
sha512sums_x86_64=(
  '15157971a19e0dbff65f900be4c9acde7f2682aa27ac0bba20cf606eb81d2169f6120ab9a2ffae8a6f81603044b75c29f3cf04107b201982e84c950bf04db550'
)
b2sums_x86_64=(
  'a7283904597c63864fc260b7824d516e65a9c1204cdcb2b7421525e7ceafe67867b39b0216444fbfef939a2ba1138a72aad00e159357f9d576a4426fd82d1808'
)
b3sums_x86_64=(
  '7b1c88fce9b6313b1a5b78aa74064db4a99bc5b07844e5d6528c251687d7afb0'
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
