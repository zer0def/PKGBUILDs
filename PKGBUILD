pkgname=libnvidia-nscq
pkgver=560.35.03
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
  '5b851b42776367500c58b6481a0599daa7fd79f174f60dcc03630920c058eccf'
)
sha512sums_aarch64=(
  '265d4fc0576870896f38772096de52e35834ece264ced1c6c1d09328677242a7394b35485ad5e4889cf97c2bfd7f475b5ac217b195387f3aa701e8753bec2dc5'
)
b2sums_aarch64=(
  '4a0ce45affb80863912c747bc52ae19e98cb7a1acb67acb7b9ca773a7f3a17a9d9808a9d29814f4604979d581338e601a16bd21c7603572c263780ce26625549'
)
b3sums_aarch64=(
  '1bb9e419b11679fac533fe823d83b022c2a1523a4f1c56da330663c6ea6796ad'
)
fi
sha256sums_x86_64=(
  '66349840f41caeb16b1b77f1ac4956abe787bf1bbd54ad19a30e7d904f06c942'
)
sha512sums_x86_64=(
  'cee84564d637d2f881ceb0060cf485670709cc8f9402b9341cfdf4809b758ae1fc3e89f48099cf568424466ae47dda4dc622e3237f80f825d0dc928de986c546'
)
b2sums_x86_64=(
  'bda8a8648bcf00f49e38a9558d49dcc85d8009f26cc82049afeb5ec3989a79ac53449bda68311b7aeca4482296a8fce4d2028cfbc5004dbdabbf3aee8b6a0f34'
)
b3sums_x86_64=(
  'b68c7577b2397c7b4532565782c253c4d75fe5840a61e73969d1374b3f9db167'
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
