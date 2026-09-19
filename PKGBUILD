pkgname=libnvidia-nscq
pkgver=535.216.03
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
  '88631b1689ab4711a4ac4d9ecce2b59e34132a4ad11ebc21220d3b5cecd91c40'
)
sha512sums_aarch64=(
  '129836a2e5abd7f5893031604a6d5f7b2c01a11ea5b531d7508510f7af9dac3953f5e34bc8c578fc2a4e17d3822c14740144199f48780c70c8685430dc71a09e'
)
b2sums_aarch64=(
  '216e162606a4832b7348bdbb5f647d11d2474750ec9794f108f14715cc8896e9d67f567e632a68f41c149679ae9b2858ca6114f8aa8d505640b9f3c341bf1548'
)
b3sums_aarch64=(
  'd7c6d4908535440494254cf63ad07ba03aeba2ea0e1d2ee91d6ecd141865ea89'
)
fi
sha256sums_x86_64=(
  'd47a795a3b9ad5996174402757353180f3ffc3a67248b5827e6aab5b86c02937'
)
sha512sums_x86_64=(
  'e7778a02d9781648c6a2154c559287ffd5b9a25cb6d404d9b2dc4104434e85cce20013f23607ca03b83f175f4882547a1c4b12efac18af565e748beb676b0ab1'
)
b2sums_x86_64=(
  '403dfa9d2bb386c9de3cbee4553a4229959cbe603eddef43fc77c9cb906d3f397f0d99e46c8652e49ecf82ed78baa3f368db0756a93f13f6dbd1c6d29c22603a'
)
b3sums_x86_64=(
  '940d26fe34fda53054910b53371a9462aa222db1e8ccf9bca749e83a0b9540c2'
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
