pkgname=libnvidia-nscq
pkgver=610.43.02.1
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
_ver_suffix='-'
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
  '397a1f23eae850755ee0a943f256a1a159ef9a6115515f58be97fa6957455172'
)
sha512sums_aarch64=(
  '6b5a7509c6778bba9b51915cc0df232fa4daf8eb28fb66c7d0e67cdb3850043240605e06c645817c505ad763a52b61f411a7dd7fc905fb065d6057fbdb6d346e'
)
b2sums_aarch64=(
  '9f2f75482be29ba97501ce8d77a31f2361684e4fc25f2b60c36f56a278fdd28f5126ee04305dcd35add31c1bb506c8063710acb1fa5ba51c6f3ce5dc74a61585'
)
b3sums_aarch64=(
  '6c5694f57d363747424457b9d28672f37b065090655c8f509691757d58ef6376'
)
fi
sha256sums_x86_64=(
  '7174959e00eeabd08a29f87be0e2f312ee98a8daa915a7225119a72816e95c24'
)
sha512sums_x86_64=(
  'c841b6c17a98840b9f1b40adaf052e802662c77b9d37fcf09f955e58957d1fa598a316e48c01d0f5c32d751ad54a5ee3cae8520e918b7e2f53e9ad93985d02f9'
)
b2sums_x86_64=(
  '974c17406b2573d93227d7bcaa671049de192ea9caacb5549d595a3e9c3f53bbe1528ac0f6096a475b104aee788da5e6ec60792ca368afae1d393f4bf740bd09'
)
b3sums_x86_64=(
  '3431417f431bb5fee159f2a7401e04891fc36ba7f913aa6d7cc6602922c1eb5f'
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
