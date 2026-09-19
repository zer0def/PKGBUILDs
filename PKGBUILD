pkgname=libnvidia-nscq
pkgver=545.23.06.1
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
  '8b828681a448de83b053b820408a0d3631d894dd006fb26c0e1544695d8c9831'
)
sha512sums_aarch64=(
  'e754ca8f8011048bac157ae5d3a37a3cae7134a66e50b6eb5f40780b0bc8c5228c71156e18cc1a3b5ccb137f6b3bc1bdc939b27fd366b5649dfacf8f833aacd7'
)
b2sums_aarch64=(
  '15cce98ecb0650854e4d05620778ad6d6e1eb42d43a32ccdaced484eb3216ffe819125c9337b759422b2c6d7fedac3bd61655f23535ff2a194ae709848039529'
)
b3sums_aarch64=(
  '41d21949f56ca077b4d97f472f27c0e933230117abc123256817fcf3dd75bc3a'
)
fi
sha256sums_x86_64=(
  'cb8ac324f6807bb059040e26ce8d04017d99a5618a4897de7f92358623874dc2'
)
sha512sums_x86_64=(
  '2a4102afed58487c87befdd5de17b88e54d71fc178053ca1a5b4244317315949868227f6206bed5a23f031fb6dac4c250b4292179d813d90f83f6147200fae95'
)
b2sums_x86_64=(
  '8fee31dc5e6927b2235518269194c2d09daba66084c8b9d5913d87f35dfb7126dd6ec171f7e2ab5cc833cad391795cf6a8f72792492ed08433be633956c751a5'
)
b3sums_x86_64=(
  '61c94c060dbd0a3ffed1ef3a7041d8f239ba818365fe781628cf826145380621'
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
