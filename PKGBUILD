pkgname=libnvidia-nscq
pkgver=530.30.02.1
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
  '9d1c90bbc4b6e2cd5515c97baf671ff8c199bf820ddfb1622495deebcd213cda'
)
sha512sums_aarch64=(
  '6ce1db7ac3ecd03fd38c19e62ca1a00bfb6162a47aabb532ff8f60bb7f74c06b96083e7a14badf54d0f4cf9a171af06fc5029bbd61c0553448517f6869ba6f9b'
)
b2sums_aarch64=(
  '7efedf2866caafca4ccab3e2c5c8c519cd54119c81ce455c32e049da006c903c2ce998b7d40758606914915fdf1f4e32c86e128f6cc371bdb3eaf2879614d658'
)
b3sums_aarch64=(
  '700341da9d8c7b31b4835dea10dcb9e5e7558a691987ee20eda3c91aea88eee9'
)
fi
sha256sums_x86_64=(
  '214b2ca20fced5cab2fd8aad2d6f001ff862ddee82bc431fc2f6db58af478a78'
)
sha512sums_x86_64=(
  'e2e6eb13010e2bf2de7cc736d43e3da719b8ef9d85eec9e5f598d56250ad871b88e9bc195dbff98ffb42c327ec51321c289495116074746a3abcea55fd880e20'
)
b2sums_x86_64=(
  '1c66a6bfbaae37d4bf5e203c269fb9f5d4bfc1b0865f7bb5648227dd4dc5abbf90ccc712d752dee567c733bb94829d21d87d68c2c45ffe2f6fa45c496a36ae11'
)
b3sums_x86_64=(
  'd1765d8e55beadefd2a9d193680bc18d68044393d6b8d819b2fd125526d13d04'
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
