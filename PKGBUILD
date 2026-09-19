pkgname=libnvidia-nscq
pkgver=570.133.20
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
  '2fd2906dcb782e80f24b481f110ce62e26839e87e5ebc86ab17aa528573be85b'
)
sha512sums_aarch64=(
  '7157af12ed72bd26b67be7e5ebefe09c2cae90d74c4a143c1a03cea521a51360a342d101c497f7e21b62de19616a85657d87df1820a0c37755c12bd9c21a554e'
)
b2sums_aarch64=(
  '7ec9c2edf3fe175d7e6149f56963a455a3aa9fecf726bb0485957bf8f82ac304be0c048525bd7f8ffe18451f23241629725afd90af3818ad6d09f63c06e1b922'
)
b3sums_aarch64=(
  'de7fcc59106a53cf2665c6474c87eef0ce0e338e63dc11accba6247b7ef87c7d'
)
fi
sha256sums_x86_64=(
  'a4fdb36783499ae3df283ccc539e6ca5c9f29289c3263662cd91b9d24d777260'
)
sha512sums_x86_64=(
  'b103029a2168d78bbb211f616d28717204d2d1068800c610484275ecbfd5f4d832fc5334328bae0e6f8b5eed4ddf94f1692e42690b6dde6bdcd40c279feda44f'
)
b2sums_x86_64=(
  '0feb96600ac04c2b0be5740f55e5fd243ab34b10383de313c0f551a045188488ba9faafae506c70a95d4e3f4a6aadfe9f53778f4a619803deb19b90b723b3ea6'
)
b3sums_x86_64=(
  '66dd63a8da3b5605f4af0cb7f5b978b0facc74507f610a2c04d4a40bf5dcd210'
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
