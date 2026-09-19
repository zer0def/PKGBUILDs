pkgname=libnvidia-nscq
pkgver=515.86.01
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
  'fabdbc4dd7aa97caebc80d1a0e1b364de4f2ebba12bb1c46e61e246f952444fe'
)
sha512sums_aarch64=(
  '2aa0b9bac988dc77200f89f9eee497637b85be7672c9e9318696fa787df9b72e781221f9b424ede54d14b764368375334a6d1d389e89f69d37e979ac49a7102d'
)
b2sums_aarch64=(
  '61f1fee635c30662e8e040cae6a7b64abad857ff17dcb089ee2b15db621e7b4fd9db50156f9381dd70319c7b1362538c72a8b68b2ecb8ffe5326d8d82a5b96a7'
)
b3sums_aarch64=(
  '08540dab9a464494b67b4ddb34613b4aed8c6e19bec22a29ebea595f4a2cb420'
)
fi
sha256sums_x86_64=(
  '8931339d5cd919a576d6ca8b7d8fe0addd6248d1e2369948606251640f417e3e'
)
sha512sums_x86_64=(
  'b46930a19a3bf24a286fe98eeb5f901916ac54678646e1366b2ffebdc07666be65bd9f7e92cca8174bb1653db237ed69aab48829c55f57b2570c498f85cf44cc'
)
b2sums_x86_64=(
  'af52a2fbe0b070b4d856d11cc45ca7342262838cf3c4432ff73882cd41cce723d7e6cba110dad9e89b45b41ebd0678ba553b06f3b7a4883af61dfdf78480647e'
)
b3sums_x86_64=(
  'cbe9ce7e0e740ad84f165b6d77b0f420e86ffdb8a8ac5ccbc9b56b4d56ca1612'
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
