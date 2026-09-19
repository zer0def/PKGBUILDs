pkgname=libnvidia-nscq
pkgver=550.90.12
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
  'af64bf4478604565a3d9c2d0f2a45ce32ea671d4d2c29d236c8be385d5999e5d'
)
sha512sums_aarch64=(
  '2f99a9415a6fa4634e877747b8855d89fda00ed43df4f7e0fd94ad249b1c4f3c0d14f94cb3260ceefbd091fec6bd65d17875de1b77a7b62c116511d0b7f57a6c'
)
b2sums_aarch64=(
  '29283a2dc95bfd92290771b35c9e1ec08727a31c6a5702d7f68efca2c3d7d843214f947304d93f6014345e72ede7f33ed2a338f575e84b4dfa0cdedd4bf3f939'
)
b3sums_aarch64=(
  '3199f5e367fc3da6d349f7de8593e52f63f970d7c38831d681c13175873f9a97'
)
fi
sha256sums_x86_64=(
  '5bddb59ad4f27b6ff00d6b1e527e77cc17e673f20518ce6ee31db28f1baf99bc'
)
sha512sums_x86_64=(
  '79f1ac70afcb2822f14b9a6a78119635549c0e9ef8ec3a8f4d33e7d77ca6259c5c6353636f4eabb2fa9bd1f53ffc4d15f30b982746f6f79fd22921716ba99972'
)
b2sums_x86_64=(
  'a67895eeee30b3596319a02e9d2466d61baed5dba7211711620f1aa9341804c924909fe8026925e82de5fc5c37b7ef330ab2595e596ee1a6c14d066cf198b97f'
)
b3sums_x86_64=(
  '6c14d3fda2f134e53fe5a9d43bb19a81e9b2a88be64e73308b403033597c3df7'
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
