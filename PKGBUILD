pkgname=libnvidia-nscq
pkgver=515.48.07
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
  '94d337526a2adfd410a2ad0928e7bd4ff1be88294e0cd29bb1a3ed823dd506ae'
)
sha512sums_aarch64=(
  '60da97a97508e892953f1da7e7971940d460e9b6b50f6478bdcf26659cb6ab1d93cd178e81abf1a5d09eed1b39a73dc2f6e86bc62c7f438b6c0dcc890220540c'
)
b2sums_aarch64=(
  '59cceec5ce295d0a9e25181e1f54bbf218d933b9717f4658ea1c0a8fdd98b5243f5819a85aab0c53a0957743e900fbb0dd9fddf24af806f023cdc0c63425357f'
)
b3sums_aarch64=(
  'ae77760aa67e9ed734783c1afc2302f6935fe2974e4f0e877fcbe303dfa93b49'
)
fi
sha256sums_x86_64=(
  '78f934258545bdcea18b05601a6dfdfba005dd37273933a408d0aafa2ef61c61'
)
sha512sums_x86_64=(
  '26ab7cd5501e1beaba3b6ba33994a474cefd643fe690692155da7c6f694a03048d9dcb76500e2031eb2bc9ac239944a71f5ec3ab2845dbe76a65ae8abd04a2d4'
)
b2sums_x86_64=(
  'a6b17c9209bc866cdb0162021af0053dc9c7bcdc5868126e066e8d390a16b914c36cb46dc9e686483fc1f4d10df9476fb66c8aa614421c31fadce8a6e798f54e'
)
b3sums_x86_64=(
  '6776853f55e068ae300b33a6173ccf1b36a00f91c72f9b5fc8b0418a5a25cb6a'
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
