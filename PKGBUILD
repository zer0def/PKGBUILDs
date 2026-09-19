pkgname=libnvidia-nscq
pkgver=535.216.01
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
  '978c98686a69139c0094107844c190acd0b30a5d50ee69dcd70837ffd2af15b9'
)
sha512sums_aarch64=(
  '57c99c0c097f355bbf6569cf9a717be4cf4a59b287d155478c44b3675c33362b281f6d40db3a317fa62c8e25fb3cd014aa6c8a0c317981873ae3821b36e09139'
)
b2sums_aarch64=(
  '0d6d565508df0d938bae639dce3d3fed00455e3762be3ade36a81b19d62241c74ad5b1e33f6fac6de5275fff345e6fa7e2da3d8063904b29b681ef560d253c60'
)
b3sums_aarch64=(
  '7d3b7d83883b6dcc8eb2d8d598b22525d67372486999482d0a8cc886d1ddbf73'
)
fi
sha256sums_x86_64=(
  '3f7379eb902e1b533d156f543ae0b4779b30ed5aad45f000470a33a03410adee'
)
sha512sums_x86_64=(
  '0c4e79c8d218b82e992c444f3e23d038ee6622cf6303f7be60f00e54a1906f24625b9592789d17e1b5aad7cd2d08cfd35c872d745636e2240dc9f26adc6ac47e'
)
b2sums_x86_64=(
  '4f9d2a38d949e6d71bacc193a44facb8f519d9e82ca5a11b2f2a97526901a25566e587f0b0c5aeb70ba8c8e03e2e5cec1e971b80a218da99379cbcf0c76bcc94'
)
b3sums_x86_64=(
  '6de39ba780a0f85a227fa3040dde93f57b0e0b8d196355a89d55fe7c0e6fc47a'
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
