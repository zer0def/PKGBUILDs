pkgname=libnvidia-nscq
pkgver=570.148.08
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
  '241f96ce4f3ffb248420e21ac60413d163f8b74dde9b685ccfe2e1ceb7c13d5e'
)
sha512sums_aarch64=(
  '07e3cb8688248f039aea83a392e284f7b86081bef87af058647ab4eb74b4cbdd1f1e6ec1b22b654db7255047c925e7db2d1b9a95c17fb126e57cb2749c617905'
)
b2sums_aarch64=(
  'fb4f57198462326b5aec5cd559e017e4c826c631eb49446bb6d28f2968eca64a92affd4d7f96f1fd64c485b1637ae4f9dd4976950669da4712194dabe623ee91'
)
b3sums_aarch64=(
  '3e46b728e73f7873bd69a75b5a246b2f948ab71e9daed3f004fda831f052a9b8'
)
fi
sha256sums_x86_64=(
  'e4f9fabe18cd9df0610d178f2755fd48d937be3941ee2b0e80640ca0ff47432c'
)
sha512sums_x86_64=(
  '33e9445108b75b14ab2edbbc98f1068df6513790430156e400f64e539dbf7040163ca7942916133860def477562bf8659d30616d0038347630f126f3d9243579'
)
b2sums_x86_64=(
  'ddafafe3805ebaeab7c5dfaf700e3efbb7ca8dc3bcf04ee48be5967cee73de1c4f2ba5651517dc5892d4cb559809a0eea335c23c5a545ea2de1c52574928383a'
)
b3sums_x86_64=(
  '05986eb25f8f378389b7854ed6a121e337bfe0f0fa47fdaa515c050cefefa66b'
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
