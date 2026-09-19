pkgname=libnvidia-nscq
pkgver=615.71.09
pkgrel=1
[ "${pkgver%%.*}" -lt 515 ] || _arm64=aarch64
arch=(x86_64 ${_arm64})
url='https://www.nvidia.com/'
license=('LicenseRef-NVIDIA-Driver-License-Agreement')
options=('!strip')
[ "${CARCH}" = "aarch64" ] && _archdir="sbsa" || _archdir="${CARCH}"

_ver_prefix=''
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
  '409d122b86657b46a8d07a559a1d27c347f610759aae8073f1cfc1fa12c55be8'
)
sha512sums_aarch64=(
  'd1eae3559d655c265197004cc6117d23e0fc3f96362d6b106d2149c669eaa22944e030506702b3243606cc66d534717f82beda6b3838d204fb91ce9827c9e7ee'
)
b2sums_aarch64=(
  '8a2f75fae9a21db72c5bbe9743ee5c241aebc6baa143614f22232224ab955ade3976c58b7af8103f2b657ca6445ff232ce62f45ffaa0e7e3eba2e6336b3efce2'
)
b3sums_aarch64=(
  'ade9dcbea093a3187f47f3249ba345e5a6f32d04df9201c23f5d0205897064f3'
)
fi
sha256sums_x86_64=(
  '65a8d12f34fd916cc3a65164a437fc91a982f04f83f30717bdddf7889180f0e2'
)
sha512sums_x86_64=(
  '55cd59fb01b5d8bce9a3968d57b4484ff9c74ac5b11bc0eaf3a85c8f1c9d491d9fb6f19b8c2b4cc8df41c271634a415bd1a83124da37750c891ac9694ca0879c'
)
b2sums_x86_64=(
  '0d9f902d50aac4a2d7df2facc1820a221b0f27bdb63a0bbfd7929f018a662f54f3b314923cee0d133c836f2cc778fbb5cbc552376a9bcf733629b16f48654462'
)
b3sums_x86_64=(
  'efe155d4e61257d4dd5f60a66d500991aaaa352a2fdd838b45dd3384bc4a307d'
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
