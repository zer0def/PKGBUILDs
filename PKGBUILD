pkgname=libnvidia-nscq
pkgver=515.65.01
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
  'fa37d0c15d79fe3ad1280f5d5946ad3c849592d89627339d1ecd90e4baeb73a1'
)
sha512sums_aarch64=(
  '4fe843b21fa2483ec911fdfb0b214882dff92d7c10ac3f6de94024fa9f819d9aaebefce4cd5ce0835b702926a3bbbb539e27501eef513439a0e6d6869ace5598'
)
b2sums_aarch64=(
  '76f26fa5c5685cffa61439e79ab9cccde8e3c886047316b8189a92c78facc74a6364ac3378524edb3cc541d2fd2558f2c21e8a087ef710f6e580c1cfc15f62c9'
)
b3sums_aarch64=(
  '622c3df9f4f656db3c3b36a28112351800a9a91a0bd4469c8a622af48efe05cf'
)
fi
sha256sums_x86_64=(
  '588b0a5ce467992ba926ada4d36ccf6741c3cfcc3fa8f03c6f68290a3f2c2a3b'
)
sha512sums_x86_64=(
  '97305153900e1f7563b5f3434cb9c9082171964430b7f61a59037a407237cbfc9661ca10d76803213dff591cdce1d5fd07fc1ea70023131e388016e0956a107a'
)
b2sums_x86_64=(
  '62e66388e224eab35412e64145e5e0a8c3ae88d07324b88924b6064e708e2b75feb88acba32355537f7029d96b3b5892161b3d5079399b48ce1116de8e6a5120'
)
b3sums_x86_64=(
  '2c7403a53dd08f19bec318ae989b44584b69b9ae591d72a13a80809a5fb22a72'
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
