pkgname=libnvidia-nscq
pkgver=525.85.12
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
  'd97f6f9f6c038218ff1bedab1d96d5c94fa48bc2fe2bb2de7d5b221d2f629a31'
)
sha512sums_aarch64=(
  '129dc5857dbd42de12a15458ff18430c5094b3f17bf3f6891eb52ad6867d3af329c653e7be900b8c8ca6aa45b1c6ffa901510fac56c64d60ffff520d3d128e8b'
)
b2sums_aarch64=(
  '9cf0bba61036f9aa432bb8ce77fe86ba6d0db3f783f13da704a4a9a09ac846dd254e79c076371c581fa45d85e7eddf82950e29c1c1309b77427f657826e200cb'
)
b3sums_aarch64=(
  'ffa159abc0e0c80fd757ea30bebc87d8364cf44344dfa96baaae5013dfa46547'
)
fi
sha256sums_x86_64=(
  '3539eb9651970ea4c1dffa9b5c884c2c421649fff52b691fcc42220f7e24b7ec'
)
sha512sums_x86_64=(
  'c0a8d4531f23c9e381c4ea430c7706a147ea414c78dea349d4c5ec0c040dba44963b07c4e8762527ec41c47f338f576d512ee7598eb497c8ca9661e88814f858'
)
b2sums_x86_64=(
  '1d2e6392ceafef7df54fb0bb9d85bf82be7a79b06312ca9be56792ac45ae72a9a45f5ac305b62472b53b98846934554528d69189c035e43e4350a73ce33c7e4e'
)
b3sums_x86_64=(
  '166fd104c84557fddf0ca091965d455f9caf6e48ad4905e49ff51f1747d63995'
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
