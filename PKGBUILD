pkgname=libnvidia-nscq
pkgver=515.105.01
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
  '3459cb5ff43063fdb335741dac4de6e2abce40c46ec7cc38a6f7434734f8cde5'
)
sha512sums_aarch64=(
  '8d8dd38f482f14a8411fed94722039f82984e505006604909bf00df82fc3e06cefcb00a81f0339d0db4a387ef73b96d873fdd95ad6a65aac602435f0334e3b40'
)
b2sums_aarch64=(
  '17c16b143e3d8126c1d322881a5b74694b669c9e951f7c372d1f6042eb99c632fae04c29119039c374e9aade334286be45c4d0aa2681aef4974cd768d52f3bc1'
)
b3sums_aarch64=(
  '1cab56dafe51e65ff594064ddb86b9f820b4bb6b17ac29cca3aab11cf1f7c575'
)
fi
sha256sums_x86_64=(
  '256fd8c6ca335df0205c6f77d7fa9110cae857dbd2a404c233de1f7d2b0fa891'
)
sha512sums_x86_64=(
  'b3ae2f4d8eaf353ebf27ff112cb8157e3f3033a994e4a942788a5998eda0afe9da5747143956fe32b12082797de008defae4f6597fa306bd2e4693248c50cd62'
)
b2sums_x86_64=(
  'cc233ea41a0a3866d5d1e075f70fe6adeb3882f543264b8b8baa4bcdd60ab6b087ff383d5d9b73a1b798519bc4b9fb53fc1303a075a73eb78aef479ebf11ebdb'
)
b3sums_x86_64=(
  '7237df3ba957f74d3a8236d2ef6d976693d853602ab4465326d851998dfed892'
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
